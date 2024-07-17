#import <UIKit/UIKit.h>

%hook UIStatusBarBatteryItemView
- (id)_accessoryImage {
    return NULL;
}
%end

%hook UIStatusBarForegroundStyleAttributes
- (double)batteryAccessoryMargin {
    return 0;
}
%end

