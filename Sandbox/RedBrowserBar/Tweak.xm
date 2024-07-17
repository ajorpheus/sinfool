#import <UIKit/UIKit.h>

%hook _SFNavigationBarItem
- (bool)overrideBarStyleForSecurityWarning {
    return 1;
}
%end

