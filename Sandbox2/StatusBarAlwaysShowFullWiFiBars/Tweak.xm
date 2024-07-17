#import <UIKit/UIKit.h>

%hook SBWiFiManager
- (bool)isAssociatedToIOSHotspot {
    return 0;
}
%end

%hook SBTelephonyManager
- (int)dataConnectionType {
    return 9;
}
%end

%hook SBWiFiManager
- (int)signalStrengthBars {
    return 3;
}
%end

