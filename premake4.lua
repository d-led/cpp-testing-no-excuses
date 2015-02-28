include 'premake'

make_solution 'no_excuses'

includedirs {
	'deps/Catch/single_include',
	'src'
}

-----------------------------------
make_console_app('catch_example', {
	'src/counter/counter.h',
	'src/catch/simple.cpp'
}) 

run_target_after_build()
use_standard 'c++11'