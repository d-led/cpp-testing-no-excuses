include 'premake'

make_solution 'no_excuses'

boost = assert(dofile 'premake/recipes/boost.lua')

boost:set_defines()
boost:set_includedirs()
boost:set_libdirs()

includedirs {
	'deps/Catch/single_include',
	'deps/gmock/fused-src',
	'deps/cucumber-cpp/cucumber-cpp/include',
	'deps/cucumber-cpp/cppspec/include',
	'src'
}

-----------------------------------
make_console_app('catch_example', {
	'src/counter/counter.h',
	'src/catch/simple.cpp'
}) 
run_target_after_build()
use_standard 'c++0x'

-----------------------------------
make_static_lib('gmock',{'deps/gmock/fused-src/gmock-gtest-all.cc'})
use_standard 'c++0x'
make_static_lib('gmock_main',{'deps/gmock/fused-src/gmock_main.cc'})
use_standard 'c++0x'

-----------------------------------
make_console_app('gmock_example', {
	'src/counter/*.h',
	'src/element/*.h',
	'src/gmock/mocks.cpp'
})
run_target_after_build()
use_standard 'c++0x'
links { 'gmock', 'gmock_main' }
configuration 'linux'
	links 'pthread'
configuration '*'


------------------------------------

cucumber_cpp_root = 'deps/cucumber-cpp'
dofile 'cucumber-cpp.lua'
local cucumber_steps = require ( path.join(cucumber_cpp_root, 'recipes/cucumber-steps') )
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
	trigger     = 'prepare',
	description = 'prepare submodules',
	execute     = function ()
		os.execute 'git submodule update --init --recursive'
	end	
}
-----------
newaction {
	trigger     = 'cucumber',
	description = 'run cucumber tests',
	execute     = function ()
		local util = require ( path.join(cucumber_cpp_root, 'recipes/util') )
		util.start_cucumber {
			start_in = '.' ,
			executable = 'cucumber_example'
		}
	end
}
-----------
