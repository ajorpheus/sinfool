#import <UIKit/UIKit.h>

%hook _UINavigationBarVisualStyle
- (double)leftBackTitleMarginForCustomBackButtonBackground:(id)arg1 {
    return 0;
}
%end

%hook UINavigationBar
- (bool)_suppressBackIndicator {
    return 1;
}
%end

