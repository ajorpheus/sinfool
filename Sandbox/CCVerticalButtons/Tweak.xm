#import <UIKit/UIKit.h>

%hook CCUIControlCenterPageContainerViewController
- (long long)layoutStyle {
    return 1;
}
%end

