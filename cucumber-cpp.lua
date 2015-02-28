local function cucumber_cpp_path(dir)
	return path.join(cucumber_cpp_root,dir)
end

includedirs {
	cucumber_cpp_path('cppspec/include'),
	cucumber_cpp_path('cucumber-cpp/include'),
}

----------------------------------------------------------------------------------------------------------------
make_static_lib('cucumber-cpp', {
	cucumber_cpp_path 'cucumber-cpp/src/*.cpp',
	cucumber_cpp_path 'cucumber-cpp/src/connectors/wire/*.cpp'
})
	excludes { cucumber_cpp_path 'cucumber-cpp/src/main.cpp' }
----------------------------------------------------------------------------------------------------------------
make_static_lib('cucumber-cpp-main', { cucumber_cpp_path 'cucumber-cpp/src/main.cpp' })
----------------------------------------------------------------------------------------------------------------
make_static_lib('cppspec',{cucumber_cpp_path 'cppspec/src/*.cpp' } )
----------------------------------------------------------------------------------------------------------------
make_static_lib('cucumber-cpp-cppspec-driver', { cucumber_cpp_path 'cucumber-cpp/src/drivers/CppSpecDriver.cpp' })
----------------------------------------------------------------------------------------------------------------
