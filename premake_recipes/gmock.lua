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

local function generate_build(gmock_root)
	----------------------------------------------------------------------------------------------------------------
	make_static_lib('gmock', { path.join(gmock_root,'fused-src/gmock-gtest-all.cc') } )
	gmock_config()
	----------------------------------------------------------------------------------------------------------------
	make_static_lib('gmock_main', { path.join(gmock_root,'fused-src/gmock_main.cc') } )
	gmock_config()
end

return {
	gmock_config = gmock_config,
	generate_build = generate_build
}
