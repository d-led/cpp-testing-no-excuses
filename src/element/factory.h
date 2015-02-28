#pragma once

#include <memory>
#include "element.h"
#include "id_source.h"
#include <sstream>

class factory {
    std::shared_ptr<id_source> source;
public:
    factory(std::shared_ptr<id_source> const& s) : source(s) {}
public:
    std::shared_ptr<element> new_element() {
        struct element_impl : public element {
            std::string id_;
        public:
            element_impl(std::string const& i) : id_(i) {}
        public:
            std::string id() {
                return id_;
            }
        };

        std::stringstream ss;
        ss << source->new_id();

        return std::make_shared<element_impl>(ss.str());
    }
};
