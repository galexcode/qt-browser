#-------------------------------------------------
#
# Project created by QtCreator 2010-11-13T21:26:30
#
#-------------------------------------------------

QT       += core gui webkit network

TARGET = browser
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    mobilewebpage.cpp

HEADERS  += mainwindow.h \
    mobilewebpage.h

FORMS    += mainwindow.ui

CONFIG += mobility
MOBILITY = 

symbian {
    TARGET.UID3 = 0xed041ce5
    TARGET.CAPABILITY += NetworkServices
    TARGET.EPOCSTACKSIZE = 0x14000
    TARGET.EPOCHEAPSIZE = 0x020000 0x800000
}

RESOURCES += \
    browser.qrc
