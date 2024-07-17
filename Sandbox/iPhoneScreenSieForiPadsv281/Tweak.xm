#import <UIKit/UIKit.h>

%hook UIApplication
- (void)_setClassicMode:(long long)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook UIApplication
- (bool)_shouldZoom {
    return 1;
}
%end

%hook UIApplication
- (bool)_shouldUseHiResForClassic {
    return 1;
}
%end

