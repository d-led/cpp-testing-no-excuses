#pragma once

struct id_source {
    virtual int new_id() = 0;
    virtual ~id_source() {}
};
