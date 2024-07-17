#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIDoubleHeightStyleAttributes
- (double)heightForMetrics:(long long)arg1 {
    // •
    arg1 = 0;
    return %orig;
}
%end

