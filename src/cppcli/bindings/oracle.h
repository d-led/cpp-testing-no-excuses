#pragma once

#include "CppSharp.h"
#include <src/cppcli/oracle.h>

namespace My
{
    ref class oracle;
}

namespace My
{
    public ref class oracle : ICppInstance
    {
    public:

        property ::oracle* NativePtr;
        property System::IntPtr __Instance
        {
            virtual System::IntPtr get();
            virtual void set(System::IntPtr instance);
        }

        oracle(::oracle* native);
        static oracle^ __CreateInstance(::System::IntPtr native);
        oracle();

        System::String^ speak();
    };
}
