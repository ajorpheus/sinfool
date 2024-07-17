#import <UIKit/UIKit.h>

%hook SBBulletinBannerItem
- (id)pullDownNotification {
    // •
    return NULL;
}
%end

