#import <UIKit/UIKit.h>

%hook GMSCopyrightOverlay
- (id)initWithFrame:(CGRect)arg1 {
    // •
    return NULL;
}
%end

