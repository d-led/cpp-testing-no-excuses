#include <catch.hpp>

// Feature: Elements with Ids
//   In order to manage objects
//   As a user
//   I want objects to be identifiable

#include <element/factory.h>
#include <counter/counter.h>

#include <string>

struct Elements {
	struct counter_source : public id_source {
		counter<int> c;
		counter_source():c(1) {}
		int new_id() {
			return c.next();
		}
	};

	factory f;

	Elements():f(std::make_shared<counter_source>()) {}
};

SCENARIO_METHOD(Elements,"first element") {
	GIVEN("an element source") {
		WHEN("I request an element") {
			auto id = f.new_element()->id();

			THEN("its Id is not 0") {
				CHECK(id!="0");
			}
		}
	}
}

SCENARIO_METHOD(Elements,"consecutive elements") {
	GIVEN("an element source"){
		WHEN("I request an element"){
			auto id1 = f.new_element()->id();

			AND_WHEN("I request another element"){
				auto id2 = f.new_element()->id();

				THEN("the Ids of the elements are different") {
					CHECK(id1!=id2);
				}
			}
		}
	}
}
