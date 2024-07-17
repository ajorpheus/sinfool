#import <UIKit/UIKit.h>

%hook SBSearchEtceteraNavigationController
- (void)setShouldUnderlapNavigationBar:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SPUINavigationBar
- (void)showSeparator:(bool)arg1 animated:(bool)arg2 {
    arg1 = 0;
    %orig;
}
%end

%hook SBSearchEtceteraNavigationController
- (double)_statusBarHeightAdjustmentForCurrentOrientation {
    return 0;
}
%end

%hook SBSearchEtceteraTodayLayoutContentView
- (void)setCurrentStyle:(unsigned long long)arg1 {
    arg1 = 8;
    %orig;
}
%end

%hook SBDashBoardTodayViewController
- (bool)_shouldHideDateTimeForZeroWidgetDisplay {
    return 1;
}
%end

%hook SBSearchGesture
- (void)setDisabled:(bool)arg1 forReason:(id)arg2 {
    arg1 = 1;
    %orig;
}
%end

