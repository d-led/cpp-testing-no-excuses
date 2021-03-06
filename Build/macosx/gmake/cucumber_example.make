# GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild prelink

ifeq ($(config),debug_x32)
  RESCOMP = windres
  TARGETDIR = ../../../bin/macosx/gmake/x32/Debug
  TARGET = $(TARGETDIR)/cucumber_example
  OBJDIR = ../../../obj/macosx/gmake/x32/Debug/cucumber_example
  DEFINES += -D_DEBUG
  INCLUDES += -I/usr/local/include -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g -std=c++0x
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/macosx/gmake/x32/Debug/libcucumber-cpp-main.a ../../../bin/macosx/gmake/x32/Debug/libcucumber-cpp.a ../../../bin/macosx/gmake/x32/Debug/libcppspec.a ../../../bin/macosx/gmake/x32/Debug/libcucumber-cpp-cppspec-driver.a -lboost_system-mt -lboost_regex-mt -lboost_chrono-mt -lboost_thread-mt -lboost_system -lboost_program_options
  LDDEPS += ../../../bin/macosx/gmake/x32/Debug/libcucumber-cpp-main.a ../../../bin/macosx/gmake/x32/Debug/libcucumber-cpp.a ../../../bin/macosx/gmake/x32/Debug/libcppspec.a ../../../bin/macosx/gmake/x32/Debug/libcucumber-cpp-cppspec-driver.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -L/usr/local/lib -m32
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_x64)
  RESCOMP = windres
  TARGETDIR = ../../../bin/macosx/gmake/x64/Debug
  TARGET = $(TARGETDIR)/cucumber_example
  OBJDIR = ../../../obj/macosx/gmake/x64/Debug/cucumber_example
  DEFINES += -D_DEBUG
  INCLUDES += -I/usr/local/include -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=c++0x
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/macosx/gmake/x64/Debug/libcucumber-cpp-main.a ../../../bin/macosx/gmake/x64/Debug/libcucumber-cpp.a ../../../bin/macosx/gmake/x64/Debug/libcppspec.a ../../../bin/macosx/gmake/x64/Debug/libcucumber-cpp-cppspec-driver.a -lboost_system-mt -lboost_regex-mt -lboost_chrono-mt -lboost_thread-mt -lboost_system -lboost_program_options
  LDDEPS += ../../../bin/macosx/gmake/x64/Debug/libcucumber-cpp-main.a ../../../bin/macosx/gmake/x64/Debug/libcucumber-cpp.a ../../../bin/macosx/gmake/x64/Debug/libcppspec.a ../../../bin/macosx/gmake/x64/Debug/libcucumber-cpp-cppspec-driver.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -L/usr/local/lib -m64
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_arm)
  RESCOMP = windres
  TARGETDIR = ../../../bin/macosx/gmake/arm/Debug
  TARGET = $(TARGETDIR)/cucumber_example
  OBJDIR = ../../../obj/macosx/gmake/arm/Debug/cucumber_example
  DEFINES += -D_DEBUG
  INCLUDES += -I/usr/local/include -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g -std=c++0x
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/macosx/gmake/arm/Debug/libcucumber-cpp-main.a ../../../bin/macosx/gmake/arm/Debug/libcucumber-cpp.a ../../../bin/macosx/gmake/arm/Debug/libcppspec.a ../../../bin/macosx/gmake/arm/Debug/libcucumber-cpp-cppspec-driver.a -lboost_system-mt -lboost_regex-mt -lboost_chrono-mt -lboost_thread-mt -lboost_system -lboost_program_options
  LDDEPS += ../../../bin/macosx/gmake/arm/Debug/libcucumber-cpp-main.a ../../../bin/macosx/gmake/arm/Debug/libcucumber-cpp.a ../../../bin/macosx/gmake/arm/Debug/libcppspec.a ../../../bin/macosx/gmake/arm/Debug/libcucumber-cpp-cppspec-driver.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/local/lib
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x32)
  RESCOMP = windres
  TARGETDIR = ../../../bin/macosx/gmake/x32/Release
  TARGET = $(TARGETDIR)/cucumber_example
  OBJDIR = ../../../obj/macosx/gmake/x32/Release/cucumber_example
  DEFINES +=
  INCLUDES += -I/usr/local/include -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2 -std=c++0x
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/macosx/gmake/x32/Release/libcucumber-cpp-main.a ../../../bin/macosx/gmake/x32/Release/libcucumber-cpp.a ../../../bin/macosx/gmake/x32/Release/libcppspec.a ../../../bin/macosx/gmake/x32/Release/libcucumber-cpp-cppspec-driver.a -lboost_system-mt -lboost_regex-mt -lboost_chrono-mt -lboost_thread-mt -lboost_system -lboost_program_options
  LDDEPS += ../../../bin/macosx/gmake/x32/Release/libcucumber-cpp-main.a ../../../bin/macosx/gmake/x32/Release/libcucumber-cpp.a ../../../bin/macosx/gmake/x32/Release/libcppspec.a ../../../bin/macosx/gmake/x32/Release/libcucumber-cpp-cppspec-driver.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -L/usr/local/lib -m32 -Wl,-x
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x64)
  RESCOMP = windres
  TARGETDIR = ../../../bin/macosx/gmake/x64/Release
  TARGET = $(TARGETDIR)/cucumber_example
  OBJDIR = ../../../obj/macosx/gmake/x64/Release/cucumber_example
  DEFINES +=
  INCLUDES += -I/usr/local/include -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -std=c++0x
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/macosx/gmake/x64/Release/libcucumber-cpp-main.a ../../../bin/macosx/gmake/x64/Release/libcucumber-cpp.a ../../../bin/macosx/gmake/x64/Release/libcppspec.a ../../../bin/macosx/gmake/x64/Release/libcucumber-cpp-cppspec-driver.a -lboost_system-mt -lboost_regex-mt -lboost_chrono-mt -lboost_thread-mt -lboost_system -lboost_program_options
  LDDEPS += ../../../bin/macosx/gmake/x64/Release/libcucumber-cpp-main.a ../../../bin/macosx/gmake/x64/Release/libcucumber-cpp.a ../../../bin/macosx/gmake/x64/Release/libcppspec.a ../../../bin/macosx/gmake/x64/Release/libcucumber-cpp-cppspec-driver.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -L/usr/local/lib -m64 -Wl,-x
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_arm)
  RESCOMP = windres
  TARGETDIR = ../../../bin/macosx/gmake/arm/Release
  TARGET = $(TARGETDIR)/cucumber_example
  OBJDIR = ../../../obj/macosx/gmake/arm/Release/cucumber_example
  DEFINES +=
  INCLUDES += -I/usr/local/include -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2 -std=c++0x
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/macosx/gmake/arm/Release/libcucumber-cpp-main.a ../../../bin/macosx/gmake/arm/Release/libcucumber-cpp.a ../../../bin/macosx/gmake/arm/Release/libcppspec.a ../../../bin/macosx/gmake/arm/Release/libcucumber-cpp-cppspec-driver.a -lboost_system-mt -lboost_regex-mt -lboost_chrono-mt -lboost_thread-mt -lboost_system -lboost_program_options
  LDDEPS += ../../../bin/macosx/gmake/arm/Release/libcucumber-cpp-main.a ../../../bin/macosx/gmake/arm/Release/libcucumber-cpp.a ../../../bin/macosx/gmake/arm/Release/libcppspec.a ../../../bin/macosx/gmake/arm/Release/libcucumber-cpp-cppspec-driver.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/local/lib -Wl,-x
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

OBJECTS := \
	$(OBJDIR)/cppspec_steps.o \

RESOURCES := \

CUSTOMFILES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES) ${CUSTOMFILES}
	@echo Linking cucumber_example
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning cucumber_example
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) $(PCH)
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/cppspec_steps.o: ../../../src/cucumber/cppspec_steps.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
