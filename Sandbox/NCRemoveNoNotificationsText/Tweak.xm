#import <UIKit/UIKit.h>

%hook SBNotificationsViewController
- (id)contentUnavailableText {
    return NULL;
}
%end

