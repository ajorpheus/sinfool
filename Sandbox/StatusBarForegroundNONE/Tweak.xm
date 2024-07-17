#import <UIKit/UIKit.h>

%hook UIStatusBarForegroundStyleAttributes
- (id)initWithHeight:(float)arg1 legibilityStyle:(int)arg2 {
    return NULL;
}
%end

