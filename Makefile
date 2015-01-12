ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TextChanger
TextChanger_FILES = Tweak.xm
TextChanger_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += textchanger
include $(THEOS_MAKE_PATH)/aggregate.mk
