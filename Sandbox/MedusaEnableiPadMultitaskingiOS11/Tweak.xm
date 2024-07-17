#import <UIKit/UIKit.h>

%hook SBApplication
- (bool)isMedusaCapable {
    return 1;
}
%end

%hook SBPlatformController
- (long long)medusaCapabilities {
    return 2;
}
%end

%hook SBApplication
- (bool)_supportsApplicationType:(int)arg1 {
    return 1;
}
%end

