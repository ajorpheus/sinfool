#import <UIKit/UIKit.h>

%hook SBCCNightShiftSetting
- (bool)isRestricted {
    return 1;
}
%end

