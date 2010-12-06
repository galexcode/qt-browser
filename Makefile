# ==============================================================================
# Generated by qmake (2.01a) (Qt 4.6.3) on: Mon Dec 6 01:13:04 2010
# This file is generated by qmake and should not be modified by the
# user.
#  Name        : Makefile
#  Description : Wrapper Makefile for calling Symbian build tools
#
# ==============================================================================


MAKEFILE          = Makefile
QMAKE             = c:\nokiaqtsdk\symbian\sdk\bin\qmake.exe
DEL_FILE          = del
DEL_DIR           = rmdir
MOVE              = move
CHK_DIR_EXISTS    = if not exist
MKDIR             = mkdir
XCOPY             = xcopy /d /f /h /r /y /i
ABLD              = ABLD.BAT
DEBUG_PLATFORMS   = winscw gcce armv5 armv6
RELEASE_PLATFORMS = gcce armv5 armv6
MAKE              = make

ifeq (WINS,$(findstring WINS, $(PLATFORM)))
ZDIR=$(EPOCROOT)epoc32\release\$(PLATFORM)\$(CFG)\Z
else
ZDIR=$(EPOCROOT)epoc32\data\z
endif

DEFINES	 = -DSYMBIAN -DUNICODE -DQT_KEYPAD_NAVIGATION -DQT_SOFTKEYS_ENABLED -DQT_USE_MATH_H_FLOATS -DQT_NO_DEBUG -DQT_WEBKIT_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB
INCPATH	 =  -I"C:/NokiaQtSDK/Symbian/SDK/include/QtCore" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtCore/tmp" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtNetwork" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtNetwork/tmp" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtGui" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtGui/tmp" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtWebKit" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtWebKit/tmp" -I"C:/NokiaQtSDK/Symbian/SDK/include" -I"C:/NokiaQtSDK/Symbian/SDK/include/tmp" -I"C:/NokiaQtSDK/Symbian/SDK/mkspecs/common/symbian" -I"C:/NokiaQtSDK/Symbian/SDK/mkspecs/common/symbian/tmp" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/osextensions/stdapis" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/osextensions/stdapis/sys" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/stdapis" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/stdapis/sys" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/osextensions/stdapis/stlport" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/stdapis/stlport" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtXmlPatterns" -I"C:/NokiaQtSDK/Symbian/SDK/include/QtXmlPatterns/tmp" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/oem" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/middleware" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/domain/middleware" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/osextensions" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/domain/osextensions" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/domain/osextensions/loc" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/domain/middleware/loc" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/domain/osextensions/loc/sc" -I"C:/NokiaQtSDK/Symbian/SDK/epoc32/include/domain/middleware/loc/sc" -I"C:/nokia/browser/moc" -I"C:/nokia/browser/moc/tmp" -I"C:/nokia/browser/ui" -I"C:/nokia/browser/ui/tmp" -I"C:/nokia/browser" -I"C:/nokia/browser/tmp" -I"C:/nokia/browser/rcc" -I"C:/nokia/browser/rcc/tmp"
first: default
default: debug-winscw
all: debug release

qmake:
	$(QMAKE) -spec symbian-abld -o "bld.inf" "C:/nokia/browser/browser.pro"

bld.inf:
	$(QMAKE)

$(ABLD): bld.inf
	bldmake bldfiles

debug: $(ABLD)
	$(ABLD) build winscw udeb
	$(ABLD) build gcce udeb
	$(ABLD) build armv5 udeb
	$(ABLD) build armv6 udeb

release: $(ABLD)
	$(ABLD) build gcce urel
	$(ABLD) build armv5 urel
	$(ABLD) build armv6 urel

debug-winscw: $(ABLD)
	$(ABLD) build winscw udeb
debug-gcce: $(ABLD)
	$(ABLD) build gcce udeb
debug-armv5: $(ABLD)
	$(ABLD) build armv5 udeb
debug-armv6: $(ABLD)
	$(ABLD) build armv6 udeb
release-gcce: $(ABLD)
	$(ABLD) build gcce urel
release-armv5: $(ABLD)
	$(ABLD) build armv5 urel
release-armv6: $(ABLD)
	$(ABLD) build armv6 urel

export: $(ABLD)
	$(ABLD) export

cleanexport: $(ABLD)
	$(ABLD) cleanexport

check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc\moc_mainwindow.cpp moc\moc_mobilewebpage.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc\moc_mainwindow.cpp moc\moc_mobilewebpage.cpp 2> NUL
moc\moc_mainwindow.cpp: mainwindow.h
	C:\NokiaQtSDK\Symbian\SDK\bin\moc.exe $(DEFINES) $(INCPATH) -DSYMBIAN mainwindow.h -o moc\moc_mainwindow.cpp

moc\moc_mobilewebpage.cpp: mobilewebpage.h
	C:\NokiaQtSDK\Symbian\SDK\bin\moc.exe $(DEFINES) $(INCPATH) -DSYMBIAN mobilewebpage.h -o moc\moc_mobilewebpage.cpp

compiler_rcc_make_all: rcc\qrc_browser.cpp
compiler_rcc_clean:
	-$(DEL_FILE) rcc\qrc_browser.cpp 2> NUL
rcc\qrc_browser.cpp: browser.qrc \
		images\back.png \
		images\forward.png \
		images\reload.png
	c:\NokiaQtSDK\Symbian\SDK\bin\rcc.exe -name browser browser.qrc -o rcc\qrc_browser.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp 2> NUL
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui\ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui\ui_mainwindow.h 2> NUL
ui\ui_mainwindow.h: mainwindow.ui
	c:\NokiaQtSDK\Symbian\SDK\bin\uic.exe mainwindow.ui -o ui\ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

create_temps:
	-@ if NOT EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtCore\tmp" mkdir "C:\NokiaQtSDK\Symbian\SDK\include\QtCore\tmp"
	-@ if NOT EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtNetwork\tmp" mkdir "C:\NokiaQtSDK\Symbian\SDK\include\QtNetwork\tmp"
	-@ if NOT EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtGui\tmp" mkdir "C:\NokiaQtSDK\Symbian\SDK\include\QtGui\tmp"
	-@ if NOT EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtWebKit\tmp" mkdir "C:\NokiaQtSDK\Symbian\SDK\include\QtWebKit\tmp"
	-@ if NOT EXIST "C:\NokiaQtSDK\Symbian\SDK\include\tmp" mkdir "C:\NokiaQtSDK\Symbian\SDK\include\tmp"
	-@ if NOT EXIST "C:\NokiaQtSDK\Symbian\SDK\mkspecs\common\symbian\tmp" mkdir "C:\NokiaQtSDK\Symbian\SDK\mkspecs\common\symbian\tmp"
	-@ if NOT EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtXmlPatterns\tmp" mkdir "C:\NokiaQtSDK\Symbian\SDK\include\QtXmlPatterns\tmp"
	-@ if NOT EXIST "C:\nokia\browser\moc\tmp" mkdir "C:\nokia\browser\moc\tmp"
	-@ if NOT EXIST "C:\nokia\browser\ui\tmp" mkdir "C:\nokia\browser\ui\tmp"
	-@ if NOT EXIST "C:\nokia\browser\tmp" mkdir "C:\nokia\browser\tmp"
	-@ if NOT EXIST "C:\nokia\browser\rcc\tmp" mkdir "C:\nokia\browser\rcc\tmp"

extension_clean: compiler_clean
	-@ if EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtCore\tmp" rmdir  /S /Q  "C:\NokiaQtSDK\Symbian\SDK\include\QtCore\tmp"
	-@ if EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtNetwork\tmp" rmdir  /S /Q  "C:\NokiaQtSDK\Symbian\SDK\include\QtNetwork\tmp"
	-@ if EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtGui\tmp" rmdir  /S /Q  "C:\NokiaQtSDK\Symbian\SDK\include\QtGui\tmp"
	-@ if EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtWebKit\tmp" rmdir  /S /Q  "C:\NokiaQtSDK\Symbian\SDK\include\QtWebKit\tmp"
	-@ if EXIST "C:\NokiaQtSDK\Symbian\SDK\include\tmp" rmdir  /S /Q  "C:\NokiaQtSDK\Symbian\SDK\include\tmp"
	-@ if EXIST "C:\NokiaQtSDK\Symbian\SDK\mkspecs\common\symbian\tmp" rmdir  /S /Q  "C:\NokiaQtSDK\Symbian\SDK\mkspecs\common\symbian\tmp"
	-@ if EXIST "C:\NokiaQtSDK\Symbian\SDK\include\QtXmlPatterns\tmp" rmdir  /S /Q  "C:\NokiaQtSDK\Symbian\SDK\include\QtXmlPatterns\tmp"
	-@ if EXIST "C:\nokia\browser\moc\tmp" rmdir  /S /Q  "C:\nokia\browser\moc\tmp"
	-@ if EXIST "C:\nokia\browser\ui\tmp" rmdir  /S /Q  "C:\nokia\browser\ui\tmp"
	-@ if EXIST "C:\nokia\browser\tmp" rmdir  /S /Q  "C:\nokia\browser\tmp"
	-@ if EXIST "C:\nokia\browser\rcc\tmp" rmdir  /S /Q  "C:\nokia\browser\rcc\tmp"

pre_targetdeps: \
	generated_sources \
	all_source_deps \
	ui\ui_mainwindow.h

generated_sources: \
	moc\moc_mainwindow.cpp \
	moc\moc_mobilewebpage.cpp \
	rcc\qrc_browser.cpp

all_source_deps: \
	mainwindow.h \
	ui\ui_mainwindow.h \
	mobilewebpage.h

finalize:

winscw_deployment:

winscw_deployment_clean:

deployment:

deployment_clean:

-include .make.cache

sis:
	$(if $(wildcard browser_template.pkg),$(if $(wildcard .make.cache),$(MAKE) -s -f $(MAKEFILE) ok_sis,$(if $(QT_SIS_TARGET),$(MAKE) -s -f $(MAKEFILE) ok_sis,$(MAKE) -s -f $(MAKEFILE) fail_sis_nocache)),$(MAKE) -s -f $(MAKEFILE) fail_sis_nopkg)

ok_sis:
	createpackage.bat $(QT_SIS_OPTIONS) browser_template.pkg $(QT_SIS_TARGET) $(QT_SIS_CERTIFICATE) $(QT_SIS_KEY) $(QT_SIS_PASSPHRASE)

browser.sis:
	$(MAKE) -s -f $(MAKEFILE) sis

stub_sis:
	$(if $(wildcard browser_template.pkg),$(if $(wildcard .make.cache),$(MAKE) -s -f $(MAKEFILE) ok_stub_sis,$(if $(QT_SIS_TARGET),$(MAKE) -s -f $(MAKEFILE) ok_stub_sis,$(MAKE) -s -f $(MAKEFILE) fail_sis_nocache)),$(MAKE) -s -f $(MAKEFILE) fail_sis_nopkg)

ok_stub_sis:
	createpackage.bat -s $(QT_SIS_OPTIONS) browser_template.pkg $(QT_SIS_TARGET) $(QT_SIS_CERTIFICATE) $(QT_SIS_KEY) $(QT_SIS_PASSPHRASE)

installer_sis: browser.sis
	$(if $(wildcard browser_installer.pkg),$(MAKE) -s -f $(MAKEFILE) ok_installer_sis,$(MAKE) -s -f $(MAKEFILE) fail_sis_nopkg)

ok_installer_sis: 
	createpackage.bat $(QT_SIS_OPTIONS) browser_installer.pkg - $(QT_SIS_CERTIFICATE) $(QT_SIS_KEY) $(QT_SIS_PASSPHRASE)

fail_sis_nopkg:
	$(error PKG file does not exist, 'sis' and 'installer_sis' target are only supported for executables or projects with DEPLOYMENT statement)

fail_sis_nocache:
	$(error Project has to be built or QT_SIS_TARGET environment variable has to be set before calling 'SIS' target)

store_build:
	@echo # ============================================================================== > .make.cache
	@echo # This file is generated by make and should not be modified by the user >> .make.cache
	@echo #  Name        : .make.cache >> .make.cache
	@echo #  Part of     : browser >> .make.cache
	@echo #  Description : This file is used to cache last build target for >> .make.cache
	@echo #                make sis target. >> .make.cache
	@echo #  Version     :  >> .make.cache
	@echo # >> .make.cache
	@echo # ============================================================================== >> .make.cache
	@echo. >> .make.cache
	@echo QT_SIS_TARGET ?= $(QT_SIS_TARGET) >> .make.cache

dodistclean:
	-@ if EXIST "c:\nokia\browser\browser_template.pkg" $(DEL_FILE)  "c:\nokia\browser\browser_template.pkg"
	-@ if EXIST "c:\nokia\browser\browser_installer.pkg" $(DEL_FILE)  "c:\nokia\browser\browser_installer.pkg"
	-@ if EXIST "c:\nokia\browser\Makefile" $(DEL_FILE)  "c:\nokia\browser\Makefile"
	-@ if EXIST "c:\nokia\browser\Makefile_0xed041ce5.mk" $(DEL_FILE)  "c:\nokia\browser\Makefile_0xed041ce5.mk"
	-@ if EXIST "c:\nokia\browser\browser_0xed041ce5.mmp" $(DEL_FILE)  "c:\nokia\browser\browser_0xed041ce5.mmp"
	-@ if EXIST "c:\nokia\browser\browser_reg.rss" $(DEL_FILE)  "c:\nokia\browser\browser_reg.rss"
	-@ if EXIST "c:\nokia\browser\browser.rss" $(DEL_FILE)  "c:\nokia\browser\browser.rss"
	-@ if EXIST "c:\nokia\browser\browser.loc" $(DEL_FILE)  "c:\nokia\browser\browser.loc"
	-@ if EXIST "c:\nokia\browser\.make.cache" $(DEL_FILE)  "c:\nokia\browser\.make.cache"
	-@ if EXIST "c:\nokia\browser\bld.inf" $(DEL_FILE)  "c:\nokia\browser\bld.inf"

distclean: clean dodistclean

clean: $(ABLD)
	-$(ABLD) reallyclean
	-bldmake clean

clean-debug: $(ABLD)
	$(ABLD) reallyclean winscw udeb
	$(ABLD) reallyclean gcce udeb
	$(ABLD) reallyclean armv5 udeb
	$(ABLD) reallyclean armv6 udeb

clean-release: $(ABLD)
	$(ABLD) reallyclean gcce urel
	$(ABLD) reallyclean armv5 urel
	$(ABLD) reallyclean armv6 urel

clean-debug-winscw: $(ABLD)
	$(ABLD) reallyclean winscw udeb
clean-debug-gcce: $(ABLD)
	$(ABLD) reallyclean gcce udeb
clean-debug-armv5: $(ABLD)
	$(ABLD) reallyclean armv5 udeb
clean-debug-armv6: $(ABLD)
	$(ABLD) reallyclean armv6 udeb
clean-release-gcce: $(ABLD)
	$(ABLD) reallyclean gcce urel
clean-release-armv5: $(ABLD)
	$(ABLD) reallyclean armv5 urel
clean-release-armv6: $(ABLD)
	$(ABLD) reallyclean armv6 urel

run:
	-call /NokiaQtSDK/Symbian/SDK/epoc32/release/winscw/udeb/browser.exe $(QT_RUN_OPTIONS)
runonphone: sis
	runonphone $(QT_RUN_ON_PHONE_OPTIONS) --sis browser.sis browser.exe $(QT_RUN_OPTIONS)

