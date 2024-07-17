#import <UIKit/UIKit.h>

%hook _UINavigationBarVisualStyle
- (double)leftBackTitleMargin {
    return 0;
}
%end

%hook UINavigationBar
- (bool)_suppressBackIndicator {
    return 1;
}
%end

