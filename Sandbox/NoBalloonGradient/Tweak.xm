#import <UIKit/UIKit.h>

%hook CKColoredBalloonView
- (id)gradientView {
    // •
    return NULL;
}
%end

