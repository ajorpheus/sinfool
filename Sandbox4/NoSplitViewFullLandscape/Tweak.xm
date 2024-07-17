#import <UIKit/UIKit.h>

%hook UISplitViewController
- (bool)_isBasicallyHorizontallyCompact {
    return 1;
}
%end

%hook UISplitViewController
- (bool)isCollapsed {
    return 1;
}
%end

