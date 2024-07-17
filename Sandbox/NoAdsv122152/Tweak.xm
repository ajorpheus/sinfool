#import <UIKit/UIKit.h>

%hook AdMarvelUtilities
- (id)init {
    return NULL;
}
%end

%hook ChatViewController
- (bool)shouldShowFooterAd {
    return 0;
}
%end

