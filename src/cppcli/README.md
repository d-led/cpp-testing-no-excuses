# a SpecFlow example #

The bindings to the C++ classes are generated using [CppSharp](https://github.com/mono/CppSharp). The Windows `x32` binaries can be found in `deps` folder.

## generating the bindings ##

The C++/CLI bindings are generated using a console program named `make_bindings`. See [make_bindings.cs](make_bindings.cs).

In order for the generator to run properly, the native wrapped Clang-parser `CppSharp.CppParser.dll` should lie alongside the `make_bindings` executable.

## compiling the bindings ##

The bindings are then compiled into the managed `cppcli` dynamic library, which is referenced by the SpecFlow test. The generated sources are in [bindings/oracle.h](bindings/oracle.h) and [bindings/oracle.cpp](bindings/oracle.cpp).

## testing using SpecFlow ##

The SpecFlow project is not part of the premake-generated build files and can be found here in [My.Spec](My.Spec).

Once the Visual Studio build is regenerated, the project file `src/cppcli/My.Spec.csproj` can be added to the solution and should compile and run in 32bit, given `CppSharp.CppParser.dll` is in the output folder.

The feature file is [My.Spec/oracle.feature]([My.Spec/oracle.feature]) and the step definitions [My.Spec/OracleSteps.cs]([My.Spec/OracleSteps.cs]).

![](specflow.png)
