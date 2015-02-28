#define CATCH_CONFIG_MAIN
#include <catch.hpp>

#include <counter/counter.h>

TEST_CASE("counting up","[basics]") {
    auto c = counter<>();
    REQUIRE(c.next() == 0);
    CHECK(c.next() == 1);
}
