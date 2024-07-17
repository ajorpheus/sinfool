#import <UIKit/UIKit.h>

%hook PUScrubberView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

