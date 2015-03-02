function gmock_config() --global
	configuration 'vs*'
        defines {
            '_VARIADIC_MAX=10'
        }

	configuration 'macosx'
		defines { 
			'GTEST_USE_OWN_TR1_TUPLE=1'
		}

	configuration 'linux'
		links 'pthread'

	configuration '*'
	use_standard 'c++0x'
end
----------------------------------------------------------------------------------------------------------------
make_static_lib('gmock', {'./deps/gmock/fused-src/gmock-gtest-all.cc'} )
gmock_config()
----------------------------------------------------------------------------------------------------------------
make_static_lib('gmock_main', {'./deps/gmock/fused-src/gmock_main.cc'} )
gmock_config()

return {
	gmock_config = gmock_config
}
