#import <UIKit/UIKit.h>

%hook UIStatusBarForegroundStyleAttributes
- (id)initWithHeight:(double)arg1 legibilityStyle:(long long)arg2 {
    return NULL;
}
%end

