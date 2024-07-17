#import <UIKit/UIKit.h>

%hook UIViewController
- (BOOL)prefersStatusBarHidden {
    return 1;
}
%end

%hook MAdsView
- (id)getAdView {
    return NULL;
}
%end

%hook ADCAd
- (id)init:(id)arg1 {
    return NULL;
}
%end

