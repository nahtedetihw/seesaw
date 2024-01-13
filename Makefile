ARCHS = arm64 arm64e
TARGET := iphone:clang:14.5:14.5
INSTALL_TARGET_PROCESSES = SpringBoard
GO_EASY_ON_ME = 1
DEBUG = 0
FINALPACKAGE = 1
THEOS_PACKAGE_SCHEME=roothide

SYSROOT=$(THEOS)/sdks/iphoneos14.5.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SeeSaw

SeeSaw_FILES = Tweak.xm
SeeSaw_CFLAGS = -fobjc-arc
SeeSaw_LDFLAGS = -ld_classic

include $(THEOS_MAKE_PATH)/tweak.mk
