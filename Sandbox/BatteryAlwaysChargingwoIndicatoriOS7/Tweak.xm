#import <UIKit/UIKit.h>

%hook UIStatusBarBatteryItemView
- (BOOL)_needsAccessoryImage {
    return 1;
}
%end

%hook UIStatusBarBatteryItemView
- (id)_accessoryImage {
    return NULL;
}
%end

%hook UIStatusBarBatteryItemView
- (float)extraRightPadding {
    return -4;
}
%end

