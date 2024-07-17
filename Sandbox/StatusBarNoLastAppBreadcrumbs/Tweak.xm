#import <UIKit/UIKit.h>

%hook UIStatusBarForegroundStyleAttributes
- (void)setCanShowBreadcrumbs:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook UIStatusBarForegroundStyleAttributes
- (bool)canShowBreadcrumbs {
    return 0;
}
%end

