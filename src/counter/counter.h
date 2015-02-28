#pragma once

template<typename number_t = int>
class counter {
    number_t next_number;
public:
    counter() : next_number(0) {}
    counter(number_t starting_value) : next_number(starting_value) {}
public:
    number_t next() {
        auto res = next_number;
        next_number++;
        return res;
    }
};
