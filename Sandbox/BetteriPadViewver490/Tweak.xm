#import <UIKit/UIKit.h>

%hook CardUIBannerView
- (id)initWithFrame:(CGRect)arg1 serviceResolver:(id)arg2 actionDelegate:(id)arg3 {
    // •
    return NULL;
}
%end

%hook GMSCopyrightOverlay
- (id)initWithFrame:(CGRect)arg1 {
    // •
    return NULL;
}
%end

