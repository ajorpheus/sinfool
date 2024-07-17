#import <UIKit/UIKit.h>

%hook SBIconListPageControl
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

