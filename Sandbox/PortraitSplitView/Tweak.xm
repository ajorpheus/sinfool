#import <UIKit/UIKit.h>

%hook UITraitCollection
- (long long)horizontalSizeClass {
    return 0;
}
%end

