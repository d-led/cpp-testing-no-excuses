# cpp-testing-no-excuses

there's no excuse not to do bdd/tdd/ci (and many more) in cross-platform c++ projects

All tests are run on [travis-ci](https://travis-ci.org):
[![Build Status](https://travis-ci.org/d-led/cpp-testing-no-excuses.svg?branch=master)](https://travis-ci.org/d-led/cpp-testing-no-excuses)

See the config for details: [.travis.yml](.travis.yml)

## outline

see [commits](https://github.com/d-led/cpp-testing-no-excuses/commits/master) and:

- simple [premake](industriousone.com/premake)-based build config: [premake4.lua](premake4.lua)
- lightweight testing based on [catch](http://catch-lib.net): [src/catch/simple.cpp](src/catch/simple.cpp)
- polymorphic mocks based on [googlemock](https://code.google.com/p/googlemock/): [src/gmock/mocks.cpp](src/gmock/mocks.cpp)
- lightweight bdd-style tests using [catch](http://catch-lib.net): [src/catch/bdd_style.cpp](src/catch/bdd_style.cpp)
- [cucumber-cpp](https://github.com/cucumber/cucumber-cpp)-based behavior-style [spec/tests](https://cukes.info): [features/elements.feature](features/elements.feature), [src/cucumber/cppspec_steps.cpp](src/cucumber/cppspec_steps.cpp)
- [hayai](https://github.com/nickbruun/hayai)-based simple and informative microbenchmarking: [src/hayai/to_string_benchmark.cpp](src/hayai/to_string_benchmark.cpp)

## generating build files

`[path_to]/premake5 [build_target]`

run `[path_to]/premake5 --help` to find a suitable `[build_target]`

### customizing BOOST location (MS Windows)

in [premake4.lua](premake4.lua) prior to `boost:set_*` calls, the paths to BOOST can be customized. Either the environment variable `BOOST` should be set to the BOOST root, or it can be set directly, i.e. `boost.includedirs.windows = [[d:\\my_boost\1.55]]`. The library paths are typically more complex, thus `boost:set_libdirs()` uses a pattern (see [boost.lua](https://github.com/d-led/cpp-testing-no-excuses/blob/master/premake/recipes/boost.lua#L60-L72), based on [BOOST binaries](http://sourceforge.net/projects/boost/files/boost-binaries/)). Thus, `boost.libdirs_pattern` can be modified according to the installation. 

## running cucumber steps

prerequisite: [cucumber](https://cukes.info) should be installed, and the submodules of the [cucumber-cpp-premake](https://github.com/d-led/cucumber-cpp-premake) project should be checked out: `[path_to]/premake4 prepare`

start cucumber and the steps runner using `[path_to]/premake4 cucumber`
