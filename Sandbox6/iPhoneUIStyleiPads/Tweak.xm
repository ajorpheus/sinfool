#import <UIKit/UIKit.h>

%hook CAMViewfinderViewController
- (void)_setLayoutStyle:(long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook CAMCaptureCapabilities
- (bool)isLiveFilteringSupported {
    return 1;
}
%end

