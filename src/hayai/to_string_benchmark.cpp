#include <iostream>
#include <hayai.hpp>

#include <boost/lexical_cast.hpp>

BENCHMARK(Stringify, stringstream, 1000, 3000)
{
    std::stringstream ss;
    ss<<42;
    static std::string res = ss.str();
}

BENCHMARK(Stringify, lexical_cast, 1000, 3000)
{
    static std::string res = boost::lexical_cast<std::string>(42);
}
