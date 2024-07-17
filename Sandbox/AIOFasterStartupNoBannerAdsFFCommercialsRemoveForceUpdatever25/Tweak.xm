#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook CBSiSkinSlider
- (void)setAdMarkersAreHidden:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook UIAlertView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

