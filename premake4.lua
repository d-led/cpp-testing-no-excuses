include 'premake'

make_solution 'no_excuses'

includedirs {
	'deps/Catch/single_include',
	'deps/gmock/fused-src',
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
