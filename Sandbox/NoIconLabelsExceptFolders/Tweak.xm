#import <UIKit/UIKit.h>

%hook SBLeafIcon
- (id)displayNameForLocation:(int)arg1 {
    return NULL;
}
%end

