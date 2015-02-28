#define CATCH_CONFIG_MAIN
#include <catch.hpp>

#include <counter/counter.h>

#include <limits>

TEST_CASE("counting up", "[basics]") {
    auto c = counter<>();
    REQUIRE(c.next() == 0);
    CHECK(c.next() == 1);

    static_assert(std::is_same<decltype(c.next()), int>::value, "default counter is int-based");
}

TEST_CASE("boundary cases", "[boundary]") {

    SECTION("wrapping", "[undefined]") {
        auto c = counter<int>(std::numeric_limits<int>::max());
        CHECK(c.next() == std::numeric_limits<int>::max());
        // can't trust that one
        CHECK(c.next() == std::numeric_limits<int>::min());
    }

    SECTION("negative starting values") {
        SECTION("passing zero") {
            auto c = counter<int>(-1);
            CHECK(c.next() == -1);
            CHECK(c.next() == 0);
        }

        SECTION("moving up") {
            auto c = counter<int>(-2);
            CHECK(c.next() == -2);
            CHECK(c.next() == -1);
        }
    }

    SECTION("unsigned counter") {
        auto c = counter<unsigned>(std::numeric_limits<unsigned>::max());
        CHECK(c.next() == std::numeric_limits<unsigned>::max());
        CHECK(c.next() == 0u);
    }
}
