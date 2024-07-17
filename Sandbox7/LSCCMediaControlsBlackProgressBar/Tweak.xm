#import <UIKit/UIKit.h>

%hook MPUChronologicalProgressView
- (id)initWithStyle:(long long)arg1 {
    // Black Bar w/normal labels=0, Black Bar & Time Labels=1
    arg1 = 0;
    return %orig;
}
%end

