ARCHS = armv7 arm64 arm64e
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMusic++

YTMusic++_FILES = Tweak.xm
YTMusic++_FRAMEWORKS = UIKit
YTMusic++_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
