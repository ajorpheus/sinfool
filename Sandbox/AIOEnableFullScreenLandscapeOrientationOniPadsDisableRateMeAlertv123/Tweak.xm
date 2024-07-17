#import <UIKit/UIKit.h>

%hook UIApplication
- (void)_setClassicMode:(long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook UIViewController
- (bool)_ignoreAppSupportedOrientations {
    return 1;
}
%end

%hook iRate
- (bool)ratedAnyVersion {
    return 1;
}
%end

