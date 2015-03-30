include 'premake'

make_solution 'no_excuses'

boost = dofile 'premake/recipes/boost.lua'
lua = dofile 'premake/recipes/lua.lua'

boost:set_defines()
boost:set_includedirs()
boost:set_libdirs()

includedirs {
	'deps/Catch/single_include',
	'deps/gmock/fused-src',
	'deps/cucumber-cpp-orig/include',
	'deps/cppspec/include',
	'deps/hayai/src',
	'src'
}

-----------------------------------
make_console_app('catch_example', {
	'src/counter/*.h',
	'src/element/*.h',
	'src/catch/*.cpp'
}) 
run_target_after_build()
use_standard 'c++0x'

-----------------------------------
local gmock = require 'premake_recipes/gmock'
gmock.generate_build 'deps/gmock'
-----------------------------------
make_console_app('gmock_example', {
	'src/counter/*.h',
	'src/element/*.h',
	'src/gmock/mocks.cpp'
})
run_target_after_build()
use_standard 'c++0x'
links { 'gmock', 'gmock_main' }
gmock.gmock_config()

------------------------------------
local cucumber_cpp = require 'premake_recipes/cucumber-cpp'
cucumber_cpp.generate_build('./deps/cucumber-cpp-orig','./deps/cppspec')

local cucumber_steps = require 'premake_recipes/cucumber-steps'
cucumber_steps.make_cppspec_steps (
	'cucumber_example',
	{
		'features/**.*',
		'src/cucumber/cppspec_steps.cpp'
	}
)
use_standard 'c++0x'
boost:set_links()

-----------
newaction {
	trigger     = 'cucumber',
	description = 'run cucumber tests',
	execute     = function ()
		local util = require 'premake_recipes/cucumber'
		util.start_cucumber {
			start_in = '.' ,
			executable = 'cucumber_example'
		}
	end
}

-----------------------------------
make_console_app('hayai_benchmark', {
	'src/hayai/*.cpp',
	'deps/hayai/src/*.cpp'
})
if os.get() ~= 'windows' then
	run_target_after_build()
end
use_standard 'c++0x'
boost:set_links()
configuration 'linux'
	links 'rt'
configuration '*'


-----------------------------------
make_shared_lib('test_bindings',{
	'src/lua/bindings.cpp'
})
use_standard 'c++0x'

lua:set_includedirs()
lua:set_libdirs()
lua:set_links()

includedirs {
	'deps/LuaBridge-1.0.2'
}

targetdir 'bin'
configuration 'linux'
	targetprefix ''
configuration 'macosx'
	targetprefix ''
	targetextension '.so'
configuration '*'


-----------------------------------

if os.get() == 'windows' then
	local cppcli = dofile 'premake_recipes/cppcli.lua'
	cppcli.generate_build '.'
end
