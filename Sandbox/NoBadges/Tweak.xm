#import <UIKit/UIKit.h>

%hook PSBadgedTableCell
- (void)badgeWithInteger:(long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

