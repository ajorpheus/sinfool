#import <UIKit/UIKit.h>

%hook SBNotificationSeparatorView
- (id)initWithFrame:(CGRect)arg1 mode:(long long)arg2 {
    // Top & Bottom Separator
    return NULL;
}
%end

%hook SBTodayViewController
- (id)todayTableHeaderView {
    // Today's Date
    return NULL;
}
%end

%hook SBBulletinViewController
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2 {
    // Headers
    return 0;
}
%end

%hook SBTodayViewController
- (id)todayTableFooterView {
    // Weather/Stocks™ Footer
    return NULL;
}
%end

