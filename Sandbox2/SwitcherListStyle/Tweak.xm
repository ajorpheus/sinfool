#import <UIKit/UIKit.h>

%hook SBAppSwitcherSettings
- (int)switcherStyle {
    return 2;
}
%end

%hook SBAppSwitcherSettings
- (void)setSwitcherStyle:(int)arg1 {
    arg1 = 2;
    %orig;
}
%end

