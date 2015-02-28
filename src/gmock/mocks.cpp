#include <gtest/gtest.h>
#include <gmock/gmock.h>

#include <element/factory.h>
#include <element/element.h>

TEST(factory_test, integer_ids_should_be_stringified) {
    class mock_id_source : public id_source {
    public:
        MOCK_METHOD0(new_id, int());
    };

    auto ids = std::make_shared<mock_id_source>();
    auto fac = factory(ids);

    using ::testing::Return;
    EXPECT_CALL(*ids, new_id())
        .Times(1)
        .WillRepeatedly(Return(42));

    EXPECT_EQ("42", fac.new_element()->id());
}
