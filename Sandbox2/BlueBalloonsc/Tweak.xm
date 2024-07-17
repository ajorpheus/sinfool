#import <UIKit/UIKit.h>

%hook CKColoredBalloonView
- (BOOL)color {
    return 1;
}
%end

