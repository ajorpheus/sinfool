#import <UIKit/UIKit.h>

%hook UIStatusBarStyleAttributes
- (double)foregroundAlpha {
    // Foreground:  (Show=pass-through, Hide=0)
    return 0;
}
%end

