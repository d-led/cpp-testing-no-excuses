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
  OBJDIR     = ../../../obj/linux/gmake/x32/Debug/gmock_example/x32
  TARGETDIR  = ../../../bin/linux/gmake/x32/Debug
  TARGET     = $(TARGETDIR)/gmock_example
  DEFINES   += -DDEBUG -D_DEBUG
  INCLUDES  += -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp/cucumber-cpp/include -I../../../deps/cucumber-cpp/cppspec/include -I../../../src -I../../../deps/cucumber-cpp/cppspec/include -I../../../deps/cucumber-cpp/cucumber-cpp/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32 -std=c++0x
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../bin/linux/gmake/x32/Debug -L. -m32 -L/usr/lib32
  LDDEPS    += ../../../bin/linux/gmake/x32/Debug/libgmock.a ../../../bin/linux/gmake/x32/Debug/libgmock_main.a
  LIBS      += $(LDDEPS) -lpthread
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
  OBJDIR     = ../../../obj/linux/gmake/x32/Release/gmock_example/x32
  TARGETDIR  = ../../../bin/linux/gmake/x32/Release
  TARGET     = $(TARGETDIR)/gmock_example
  DEFINES   += -DRELEASE
  INCLUDES  += -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp/cucumber-cpp/include -I../../../deps/cucumber-cpp/cppspec/include -I../../../src -I../../../deps/cucumber-cpp/cppspec/include -I../../../deps/cucumber-cpp/cucumber-cpp/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32 -std=c++0x
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../bin/linux/gmake/x32/Release -L. -s -m32 -L/usr/lib32
  LDDEPS    += ../../../bin/linux/gmake/x32/Release/libgmock.a ../../../bin/linux/gmake/x32/Release/libgmock_main.a
  LIBS      += $(LDDEPS) -lpthread
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
  OBJDIR     = ../../../obj/linux/gmake/x64/Debug/gmock_example/x64
  TARGETDIR  = ../../../bin/linux/gmake/x64/Debug
  TARGET     = $(TARGETDIR)/gmock_example
  DEFINES   += -DDEBUG -D_DEBUG
  INCLUDES  += -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp/cucumber-cpp/include -I../../../deps/cucumber-cpp/cppspec/include -I../../../src -I../../../deps/cucumber-cpp/cppspec/include -I../../../deps/cucumber-cpp/cucumber-cpp/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64 -std=c++0x
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../bin/linux/gmake/x64/Debug -L. -m64 -L/usr/lib64
  LDDEPS    += ../../../bin/linux/gmake/x64/Debug/libgmock.a ../../../bin/linux/gmake/x64/Debug/libgmock_main.a
  LIBS      += $(LDDEPS) -lpthread
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
  OBJDIR     = ../../../obj/linux/gmake/x64/Release/gmock_example/x64
  TARGETDIR  = ../../../bin/linux/gmake/x64/Release
  TARGET     = $(TARGETDIR)/gmock_example
  DEFINES   += -DRELEASE
  INCLUDES  += -I../../../deps/Catch/single_include -I../../../deps/gmock/fused-src -I../../../deps/cucumber-cpp/cucumber-cpp/include -I../../../deps/cucumber-cpp/cppspec/include -I../../../src -I../../../deps/cucumber-cpp/cppspec/include -I../../../deps/cucumber-cpp/cucumber-cpp/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64 -std=c++0x
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../bin/linux/gmake/x64/Release -L. -s -m64 -L/usr/lib64
  LDDEPS    += ../../../bin/linux/gmake/x64/Release/libgmock.a ../../../bin/linux/gmake/x64/Release/libgmock_main.a
  LIBS      += $(LDDEPS) -lpthread
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
	$(OBJDIR)/mocks.o \

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
	@echo Linking gmock_example
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
	@echo Cleaning gmock_example
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

$(OBJDIR)/mocks.o: ../../../src/gmock/mocks.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
