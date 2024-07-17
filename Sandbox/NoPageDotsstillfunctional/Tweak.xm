#import <UIKit/UIKit.h>

%hook SBIconPageIndicatorImageSetResult
- (id)initWithIndicatorSet:(id)arg1 enabledIndicatorSet:(id)arg2 {
    return NULL;
}
%end

