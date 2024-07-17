#import <UIKit/UIKit.h>

%hook UICalloutBarButton
- (void)setDividerOffset:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

