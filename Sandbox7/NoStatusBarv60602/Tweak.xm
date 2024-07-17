#import <UIKit/UIKit.h>

%hook UIStatusBarStyleAttributes
- (double)foregroundAlpha {
    return 0;
}
%end

