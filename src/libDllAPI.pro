TEMPLATE = lib

QT       =
CONFIG   += console
CONFIG   -= app_bundle

CONFIG *= dllapi-buildlib
#var with '_' can not pass to pri?
STATICLINK = 0
PROJECTROOT = $$PWD/..
!include(libDllAPI.pri): error(could not find libDllAPI.pri)
preparePaths($$OUT_PWD/../out)

win32 {

} else {
    QMAKE_LFLAGS += -ldl
}
SOURCES += dllapi.cpp

HEADERS += dllapi_global.h dllapi.h \
    dllapi_p.h



