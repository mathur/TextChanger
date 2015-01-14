ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TextChanger
TextChanger_FILES = TextChanger.mm
TextChanger_INSTALL_PATH = /Library/PreferenceBundles
TextChanger_FRAMEWORKS = UIKit
TextChanger_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TextChanger.plist$(ECHO_END)
