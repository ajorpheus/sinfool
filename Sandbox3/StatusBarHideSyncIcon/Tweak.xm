#import <UIKit/UIKit.h>

%hook SBStatusBarStateAggregator
- (void)setShowsSyncActivityIndicator:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

