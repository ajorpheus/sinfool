#import <UIKit/UIKit.h>

%hook SBAppSwitcherSettings
- (long long)switcherStyle {
    return 0;
}
%end

%hook SBAppSwitcherPageView
- (id)overlay {
    return NULL;
}
%end

