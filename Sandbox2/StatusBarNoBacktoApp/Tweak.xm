#import <UIKit/UIKit.h>

%hook UIStatusBarForegroundStyleAttributes
- (BOOL)canShowBreadcrumbs {
    return 0;
}
%end

