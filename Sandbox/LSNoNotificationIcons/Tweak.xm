#import <UIKit/UIKit.h>

%hook SBAwayBulletinListItem
- (id)iconImage {
    return NULL;
}
%end

