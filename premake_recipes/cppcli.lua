local cppcli = {}

cppcli.generate_build = function(root_dir)
	----------------------------------------------------------------------------------------------------------------
	project 'make_bindings'
	    kind 'ConsoleApp'
	    files {
			path.join(root_dir,'src/cppcli/*.cs')
		}

		libdirs( path.join(root_dir,'deps/CppSharp/vs2013/Release_x32'))

		links {
			'CppSharp.AST',
			'CppSharp.Generator',
			'CppSharp.Parser.CLI',
			-- 'CppSharp.CppParser', --native, should be in the target path
		}

		language 'C#'

	make_shared_lib('cppcli',{
		path.join(root_dir, 'src/cppcli/bindings/*.*')	
	})

	flags { 'managed' }

	includedirs {
		root_dir,
		path.join(root_dir, 'deps/CppSharp/include' )
	}
end

return cppcli
