#pragma once

template<typename number_t = int>
class counter {
    number_t count = 0;
public:
    number_t next() {
        auto res = count;
        count++;
        return res;
    }
};
