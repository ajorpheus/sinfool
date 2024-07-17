#import <UIKit/UIKit.h>

%hook SBControlColorSettings
- (id)initWithTintColor:(id)arg1 selectedTintColor:(id)arg2 textColor:(id)arg3 selectedTextColor:(id)arg4 {
    // (Argument#3): Unselected Text Color (Argument#4): Selected Text Color
    arg3 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    arg4 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook SBRootSettings
- (id)notificationCenterSettings {
    return NULL;
}
%end

