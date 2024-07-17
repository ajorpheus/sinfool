#import <UIKit/UIKit.h>

%hook GADBannerView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

