#import <UIKit/UIKit.h>

%hook MPUSystemMediaControlsView
- (id)transportControlsView {
    return NULL;
}
%end

