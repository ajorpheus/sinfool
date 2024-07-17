#import <UIKit/UIKit.h>

%hook SBSearchEtceteraIsolatedViewController
- (bool)_todayViewIsVisible {
    return 0;
}
%end

