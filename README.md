# cpp-testing-no-excuses

there's no excuse not to do bdd/tdd (and many more d's) in cross-platform c++ projects

[![Build Status](https://travis-ci.org/d-led/cpp-testing-no-excuses.svg?branch=master)](https://travis-ci.org/d-led/cpp-testing-no-excuses)

## outline

see [commits](commits/master) and:

- simple [premake](industriousone.com/premake)-based build config: [premake4.lua](premake4.lua)
- lightweight testing based on [catch](catch-lib.net): [src/catch/simple.cpp](src/catch/simple.cpp)
- polymorphic mocks based on [googlemock](https://code.google.com/p/googlemock/): [src/gmock/mocks.cpp](src/gmock/mocks.cpp)
- lightweight bdd-style tests using [catch](catch-lib.net): [src/catch/bdd_style.cpp](src/catch/bdd_style.cpp)
- [cucumber-cpp](https://github.com/cucumber/cucumber-cpp) based behavior-style [spec/tests](cukes.info): [features/elements.feature](features/elements.feature), [src/cucumber/cppspec_steps.cpp](src/cucumber/cppspec_steps.cpp)
- [hayai](https://github.com/nickbruun/hayai)-based simple and informative microbenchmarking: [src/hayai/to_string_benchmark.cpp](src/hayai/to_string_benchmark.cpp)
