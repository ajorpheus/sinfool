#import <UIKit/UIKit.h>

%hook UITraitCollection
- (long long)verticalSizeClass {
    return 0;
}
%end

