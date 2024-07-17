#import <UIKit/UIKit.h>

%hook SBNotificationSeparatorView
- (id)initWithFrame:(CGRect)arg1 mode:(long long)arg2 {
    return NULL;
}
%end

