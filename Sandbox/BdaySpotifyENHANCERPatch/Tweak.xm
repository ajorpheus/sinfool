#import <UIKit/UIKit.h>

%hook StreamQualitySettingsSection
- (int)numberOfChoices {
    // Adds Extreme Quality Option (FYI: Extreme ONLY works w/versions 1.7.1 & below)
    return 3;
}
%end

%hook PlayController
- (id)initWithSession:(id)arg1 adController:(id)arg2 {
    // Removes Ads
    arg2 = NULL;
    return %orig;
}
%end

