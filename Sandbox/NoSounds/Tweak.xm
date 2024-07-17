#import <UIKit/UIKit.h>

%hook ALSoundSourcePool
- (id)init {
    return NULL;
}
%end

