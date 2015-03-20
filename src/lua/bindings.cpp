#include <counter/counter.h>

#include <lua.hpp>
#include <LuaBridge.h>
#include <RefCountedPtr.h>

void register_bindings(lua_State* L) {
    luabridge::getGlobalNamespace(L)
        .beginNamespace("my")
            .beginClass<counter<>>("counter")
                .addConstructor<void(*)(), RefCountedPtr<counter<>>>()  /* creation policy */ 
                .addFunction("next", &counter<>::next)
            .endClass()
        .endNamespace()
    ;
}

#ifdef _MSC_VER
#define TEST_BINDINGS __declspec(dllexport)
#else
#define TEST_BINDINGS
#endif

extern "C" TEST_BINDINGS int luaopen_test_bindings(lua_State* L) {
    register_bindings(L);
    return 0;
}
