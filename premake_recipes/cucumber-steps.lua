local cucumber_steps = {}

cucumber_steps.make_steps = function (name,files_,folder_)
	local l = {
		"cucumber-cpp-main",
		"cucumber-cpp"
	}
	make_console_app(name,files_)
		configuration { "linux" }
		links( l )
		links {
			"boost_system",
			"boost_regex",
			"boost_chrono",
			"boost_thread"
		}
        configuration { "macosx" }
       	links( l )
       	links {
			"boost_system-mt",
			"boost_regex-mt",
			"boost_chrono-mt",
			"boost_thread-mt"
		}
		configuration { "vs*" }
		links( l )
		configuration { "*" }
end

cucumber_steps.make_cppspec_steps = function (name,files_,folder_)
	cucumber_steps.make_steps(name,files_,folder_)
	links {
		"cucumber-cpp",
		"cppspec",
		"cucumber-cpp-cppspec-driver"
	}
end

cucumber_steps.make_gtest_steps = function (name,files_,folder_)
	cucumber_steps.make_steps(name,files_,folder_)
	gmock_config()
	links {
		"cucumber-cpp",
		"googlemock",
		"cucumber-cpp-gtest-driver"
	}
end

return cucumber_steps