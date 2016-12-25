#include <CppSpec.h>
#include <cucumber-cpp/autodetect.hpp>

#include <element/factory.h>
#include <counter/counter.h>

#include <vector>

using cucumber::ScenarioScope;

struct Elements {
	struct counter_source : public id_source {
		counter<int> c;
		counter_source():c(1) {}
		int new_id() {
			return c.next();
		}
	};

	factory f;
	std::vector<std::string> ids;

	Elements():f(std::make_shared<counter_source>()) {}
};

GIVEN("^an element source$") {
}


WHEN("^.*?request.*?element$") {
	ScenarioScope<Elements> context;

    context->ids.push_back(context->f.new_element()->id());
}


THEN("^its Id is not 0$") {
    ScenarioScope<Elements> context;

    specify(context->ids.size(), should.equal(1));
    specify(context->ids[0], not should.equal("0"));
}

THEN("^the Ids of the elements are different$") {
    ScenarioScope<Elements> context;

    specify(context->ids.size(), should.equal(2));
    specify(context->ids[0], not should.equal(context->ids[1]));
}
