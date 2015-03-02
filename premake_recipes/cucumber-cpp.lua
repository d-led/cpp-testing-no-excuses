local function cucumber_cpp_path(dir)
	return path.join(cucumber_cpp_root,dir)
end

includedirs {
	cucumber_cpp_path('cppspec/include'),
	cucumber_cpp_path('cucumber-cpp/include'),
}

local cucumber_cpp = {}

cucumber_cpp.generate_build = function(root_dir,cppspec_dir)
	----------------------------------------------------------------------------------------------------------------
	make_static_lib('cucumber-cpp', {
		path.join(root_dir,'src/*.cpp'),
		path.join(root_dir,'src/connectors/wire/*.cpp')
	})
	excludes { path.join(root_dir,'src/main.cpp') }
	----------------------------------------------------------------------------------------------------------------
	make_static_lib('cucumber-cpp-main', { path.join(root_dir,'src/main.cpp') })
	----------------------------------------------------------------------------------------------------------------
	make_static_lib('cppspec',{ path.join(cppspec_dir,'src/*.cpp') } )
	----------------------------------------------------------------------------------------------------------------
	make_static_lib('cucumber-cpp-cppspec-driver', { path.join(root_dir,'src/drivers/CppSpecDriver.cpp') })
	----------------------------------------------------------------------------------------------------------------
end

return cucumber_cpp
