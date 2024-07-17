#import <UIKit/UIKit.h>

%hook SBModeViewController
- (double)_headerViewHeightForMode:(long long)arg1 {
    // Hides Tabs
    return 0;
}
%end

%hook SBNotificationCenterLayoutViewController
- (bool)_areWidgetViewControllersAvailable {
    // Show Today View
    return 0;
}
%end

%hook SBNotificationCenterLayoutViewController
- (bool)_areNotificationsViewControllersAvailable {
    // Show Notifications View
    return 1;
}
%end

%hook SBNotificationSeparatorView
- (id)initWithFrame:(CGRect)arg1 mode:(long long)arg2 {
    // Show Top & Bottom Separator
    return NULL;
}
%end

