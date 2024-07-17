#import <UIKit/UIKit.h>

%hook SXMPlaybackRestrictions
- (unsigned long long)navigationType {
    return 1;
}
%end

