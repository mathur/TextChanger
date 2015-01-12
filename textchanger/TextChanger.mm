#import <Preferences/Preferences.h>

@interface TextChangerListController: PSListController {
}
@end

@implementation TextChangerListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"TextChanger" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
