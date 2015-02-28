#define CATCH_CONFIG_MAIN
#include <catch.hpp>

#include <counter/counter.h>

#include <limits>

TEST_CASE("counting up", "[basics]") {
    auto c = counter<>();
    REQUIRE(c.next() == 0);
    CHECK(c.next() == 1);
}

TEST_CASE("boundary cases", "[boundary]") {

    SECTION("wrapping","[undefined]") {
        auto c = counter<int>(std::numeric_limits<int>::max());
        CHECK(c.next() == std::numeric_limits<int>::max());
        // can't trust that one
        CHECK(c.next() == std::numeric_limits<int>::min());
    }

    SECTION("negative starting values") {
        auto c = counter<int>(-1);
        CHECK(c.next() == -1);
        CHECK(c.next() == 0);
    }

    SECTION("unsigned counter") {
        auto c = counter<unsigned>(std::numeric_limits<unsigned>::max());
        CHECK(c.next() == std::numeric_limits<unsigned>::max());
        CHECK(c.next() == 0u);
    }
}
