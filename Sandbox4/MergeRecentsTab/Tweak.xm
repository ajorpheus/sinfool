#import <UIKit/UIKit.h>

%hook UISegmentedControl
- (unsigned long long)numberOfSegments {
    return 0;
}
%end

%hook MPRecentsTableViewController
+ (bool)requiresNavigationControllerContainer {
    return 0;
}
%end

