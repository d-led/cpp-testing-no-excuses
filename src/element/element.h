#pragma once

#include <string>

struct element {
    virtual std::string id() = 0;
    virtual ~element() {}
};
