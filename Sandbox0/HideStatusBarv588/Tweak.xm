#import <UIKit/UIKit.h>

%hook UIStatusBarStyleRequest
- (id)initWithStyle:(long long)arg1 legacy:(bool)arg2 legibilityStyle:(long long)arg3 foregroundColor:(id)arg4 foregroundAlpha:(double)arg5 overrideHeight:(id)arg6 {
    arg1 = -1;
    return %orig;
}
%end

