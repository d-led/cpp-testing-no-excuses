#define CATCH_CONFIG_MAIN
#include <catch.hpp>

TEST_CASE("adding basics","[basics]") {
	CHECK( (0+1) == 0 );
}
