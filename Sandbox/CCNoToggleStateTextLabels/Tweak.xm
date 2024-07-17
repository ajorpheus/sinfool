#import <UIKit/UIKit.h>

%hook SBUIControlCenterLabel
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

