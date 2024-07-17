#import <UIKit/UIKit.h>

%hook SBTelephonyManager
- (void)_reallySetOperatorName:(id)arg1 {
    // Set Carrier Name...
    arg1 = @"Flex 3";
    %orig;
}
%end

%hook SBTelephonyManager
- (bool)cellularRadioCapabilityIsActive {
    return 1;
}
%end

