%hook SBLockScreenView
- (void)setCustomSlideToUnlockText:(id)unlockText {
    NSString *settingsPath = @"/var/mobile/Library/Preferences/com.rohan32.textchanger~prefs.plist";
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
    NSString *text = [prefs objectForKey:@"text"];
    BOOL enabled = [[prefs objectForKey:@"enabled"] boolValue];

    if([text isEqualToString:@""] || text == nil || !enabled) {
        %orig(unlockText); 
    }
    else if (enabled) {
        unlockText = text;
        %orig(unlockText);
    }
}
%end