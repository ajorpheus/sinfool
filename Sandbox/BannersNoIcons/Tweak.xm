#import <UIKit/UIKit.h>

%hook SBBulletinBannerItem
- (id)iconImage {
    return NULL;
}
%end

