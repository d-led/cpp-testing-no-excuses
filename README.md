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
- scripted testing without recompiles (i.e. for data-driven tests) using a [lua binding](src/lua/bindings.cpp) via [LuaBridge](https://github.com/vinniefalco/LuaBridge), and a [behavior spec](spec/counter_spec.lua) for testing with [busted](https://github.com/Olivine-Labs/busted)
- an exploratory example for Visual Studio and [SpecFlow](www.specflow.org) can be found in [src/cppcli](src/cppcli)

## generating build files

`[path_to]/premake5 [build_target]`

run `[path_to]/premake5 --help` to find a suitable `[build_target]`

if a feature is not implemented for the chosen platform in premake5, try premake4, since premake5 is still in "alpha".

### customizing BOOST location (MS Windows)

in [premake4.lua](premake4.lua) prior to `boost:set_*` calls, the paths to BOOST can be customized.

Either the environment variable `BOOST` should be set to the BOOST root, or it can be set directly, i.e. `boost.includedirs.windows = [[d:\\my_boost\1.55]]`.

The library paths are typically more complex, thus `boost:set_libdirs()` uses a pattern (see substitutions [boost.lua](https://github.com/d-led/premake-meta-cpp/blob/master/recipes/boost.lua#L60-L73), based on [BOOST binaries](http://sourceforge.net/projects/boost/files/boost-binaries/)). `boost.libdirs_pattern.windows` can be modified according to the installation, i.e.

```lua
boost.libdirs_pattern.windows = path.join(boost.includedirs.windows,'lib/$(PlatformTarget)')
```

If you use boost in a custom configuration and you have to set defines, you can add defines in similar fashion:

```lua
local d = boost.defines.windows
d[#d+1] = 'BOOST_REGEX_...'
d[#d+1] = 'BOOST_....WHATEVER'
```

## running cucumber steps

prerequisite: [cucumber](https://cukes.info) should be installed

Start cucumber and the steps runner using `[path_to]/premake4 cucumber`. The actual command line is `bin/[path_to]/cucumber_example && cucumber` on *X, and `start bin\[path_to]\cucumber_example & cucumber` on MS Windows.

## running busted tests

prerequisite: [busted](https://github.com/Olivine-Labs/busted), i.e. installed via [luarocks](https://rocks.moonscript.org/)

`busted`

## presentation

- [26.03.2015 MUC++ Meetup @ TU-München](doc/2015_03_26_dled_no_excuses_meetup_at_tum.pdf)
