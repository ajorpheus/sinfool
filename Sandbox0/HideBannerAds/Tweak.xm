#import <UIKit/UIKit.h>

%hook GADBannerView
- (id)initWithFrame:(CGRect)arg1 {
    // Delete **THIS** for a BLACK Banner 
    return NULL;
}
%end

