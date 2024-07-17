#import <UIKit/UIKit.h>

%hook GADViewController
- (id)init {
    return NULL;
}
%end

%hook GADBannerView
- (void)setAdSize:(GADAdSize)arg1 andReload:(BOOL)arg2 {
    arg2 = 0;
    %orig;
}
%end

