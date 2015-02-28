include 'premake'

make_solution 'no_excuses'

includedirs {
	'deps/Catch/single_include'
}

-----------------------------------
make_console_app('catch_example', {
	'src/catch/simple.cpp'
}) 

run_target_after_build()