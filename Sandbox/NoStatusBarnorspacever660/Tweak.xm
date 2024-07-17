#import <UIKit/UIKit.h>

%hook UITraitCollection
- (long long)verticalSizeClass {
    return 1;
}
%end

