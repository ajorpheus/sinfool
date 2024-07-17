#import <UIKit/UIKit.h>

%hook UIStatusBar
- (void)_crossfadeToNewForegroundViewWithAlpha:(double)arg1 {
    // Set Alpha...  Range (0.0-1.0)
    arg1 = 0.5;
    %orig;
}
%end

