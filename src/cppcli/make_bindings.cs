using CppSharp;
using CppSharp.AST;
using CppSharp.Generators;
using CppSharp.Utils;
using System;
using System.IO;

namespace make_bindings
{
    public class My : ILibrary
    {
        GeneratorKind generator;

        public My(GeneratorKind kind)
        {
            generator = kind;
        }

        public void Setup(Driver driver)
        {
            //driver.Options.GenerateFinalizers = true;
            //driver.Options.GenerateObjectOverrides = true;

            var options = driver.Options;
            options.GeneratorKind = generator;
            options.LibraryName = "My";
            options.addIncludeDirs("../../../../../src");
            options.Headers.Add("cppcli/oracle.h");
            options.OutputDir = "../../../../../src/cppcli/bindings";
        }

        public void Preprocess(Driver driver, ASTContext ctx)
        {
        }

        public static void Main(string[] args)
        {
            try
            {
                Console.WriteLine(Directory.GetCurrentDirectory());
                ConsoleDriver.Run(new My(GeneratorKind.CLI));
            }
            catch (Exception e) {
                Console.Error.WriteLine(e);
            }
        }

        public void Postprocess(Driver driver, ASTContext ctx)
        {
            
        }

        public void SetupPasses(Driver driver)
        {
            
        }
    }
}
