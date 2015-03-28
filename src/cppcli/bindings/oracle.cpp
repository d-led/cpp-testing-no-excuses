#include "oracle.h"

using namespace System;
using namespace System::Runtime::InteropServices;

My::oracle::oracle(::oracle* native)
{
    NativePtr = native;
}

My::oracle^ My::oracle::__CreateInstance(::System::IntPtr native)
{
    return gcnew My::oracle((::oracle*) native.ToPointer());
}

System::String^ My::oracle::speak()
{
    auto __ret = ((::oracle*)NativePtr)->speak();
    return clix::marshalString<clix::E_UTF8>(__ret);
}

My::oracle::oracle()
{
    NativePtr = new ::oracle();
}

System::IntPtr My::oracle::__Instance::get()
{
    return System::IntPtr(NativePtr);
}

void My::oracle::__Instance::set(System::IntPtr object)
{
    NativePtr = (::oracle*)object.ToPointer();
}
