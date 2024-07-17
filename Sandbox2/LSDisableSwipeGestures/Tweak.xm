#import <UIKit/UIKit.h>

%hook SBLockScreenHintManager
- (id)init {
    return NULL;
}
%end

