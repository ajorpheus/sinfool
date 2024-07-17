#import <UIKit/UIKit.h>

%hook SBSearchBlurEffectView
- (id)init {
    return NULL;
}
%end

