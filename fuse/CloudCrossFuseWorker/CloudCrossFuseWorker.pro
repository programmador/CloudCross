android {
    message("* Using settings for Android.")

    DEFINES += PLATFORM_ANDROID
}


linux:!android {
    message("* Using settings for Unix/Linux.")

    DEFINES += PLATFORM_LINUX
}

win32{
    message("* Using settings for Windows.")

    DEFINES += PLATFORM_WINDOWS
}



QT += core network
QT -= gui

TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
#CONFIG -= qt

TARGET = ccfw
VERSION = 1.0.0


include(../../CloudCross.pri)

SOURCES += main.cpp \
#    incominglistener.cpp \
#    fswatcher.cpp \
#    ../../src/common/msproviderspool.cpp \
#    ../../src/common/mscloudprovider.cpp \
#    ../../src/common/msrequest.cpp \
#    ../../src/common/qstdout.cpp \
#    ../../src/common/msfsobject.cpp \
#    ../../src/common/msremotefsobject.cpp \
#    ../../src/common/mslocalfsobject.cpp \
#    ../../src/OneDrive/msonedrive.cpp \
#    ../../src/GoogleDrive/msgoogledrive.cpp \
#    ../../src/Dropbox/msdropbox.cpp \
#    ../../src/YandexDisk/msyandexdisk.cpp \
#    ../../src/MailRu/msmailru.cpp \
    cc_fusefs.cpp


LIBS+= -lfuse \
        -pthread

HEADERS += \
    ccfw.h \
#    ../../include/msproviderspool.h \
#    ../../include/mscloudprovider.h \
#    ../../include/msrequest.h \
#    ../../include/qstdout.h \
#    ../../include/msfsobject.h \
#    ../../include/msremotefsobject.h \
#    ../../include/mslocalfsobject.h \
#    ../../src/OneDrive/msonedrive.h \
#    ../../src/GoogleDrive/msgoogledrive.h \
#    ../../src/Dropbox/msdropbox.h \
#    ../../src/YandexDisk/msyandexdisk.h \
#    ../../src/MailRu/msmailru.h \
    cc_fusefs.h


DEFINES += LIBFUSECC_LIBRARY

unix:!macx: LIBS += -L$$PWD/../build/ -lfusecc



INCLUDEPATH += $$PWD/../build
DEPENDPATH += $$PWD/../build
