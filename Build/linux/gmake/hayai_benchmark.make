# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

CC = gcc
CXX = g++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),debug32)
  OBJDIR     = ../../../obj/linux/gmake/x32/Debug/hayai_benchmark/x32
  TARGETDIR  = ../../../bin/linux/gmake/x32/Debug
  TARGET     = $(TARGETDIR)/hayai_benchmark
  DEFINES   += -DDEBUG -D_DEBUG
  INCLUDES  += -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32 -std=c++0x
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L. -m32 -L/usr/lib32
  LDDEPS    +=
  LIBS      += $(LDDEPS) -lboost_system -lpthread -lrt
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = ../../../obj/linux/gmake/x32/Release/hayai_benchmark/x32
  TARGETDIR  = ../../../bin/linux/gmake/x32/Release
  TARGET     = $(TARGETDIR)/hayai_benchmark
  DEFINES   += -DRELEASE
  INCLUDES  += -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32 -std=c++0x
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L. -s -m32 -L/usr/lib32
  LDDEPS    +=
  LIBS      += $(LDDEPS) -lboost_system -lpthread -lrt
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = ../../../obj/linux/gmake/x64/Debug/hayai_benchmark/x64
  TARGETDIR  = ../../../bin/linux/gmake/x64/Debug
  TARGET     = $(TARGETDIR)/hayai_benchmark
  DEFINES   += -DDEBUG -D_DEBUG
  INCLUDES  += -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64 -std=c++0x
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L. -m64 -L/usr/lib64
  LDDEPS    +=
  LIBS      += $(LDDEPS) -lboost_system -lpthread -lrt
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = ../../../obj/linux/gmake/x64/Release/hayai_benchmark/x64
  TARGETDIR  = ../../../bin/linux/gmake/x64/Release
  TARGET     = $(TARGETDIR)/hayai_benchmark
  DEFINES   += -DRELEASE
  INCLUDES  += -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp-orig/include -I../../../deps/cppspec/include -I../../../deps/hayai/src -I../../../src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64 -std=c++0x
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L. -s -m64 -L/usr/lib64
  LDDEPS    +=
  LIBS      += $(LDDEPS) -lboost_system -lpthread -lrt
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

OBJECTS := \
	$(OBJDIR)/to_string_benchmark.o \
	$(OBJDIR)/hayai_posix_main.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking hayai_benchmark
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
	@echo Cleaning hayai_benchmark
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
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/to_string_benchmark.o: ../../../src/hayai/to_string_benchmark.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/hayai_posix_main.o: ../../../deps/hayai/src/hayai_posix_main.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
