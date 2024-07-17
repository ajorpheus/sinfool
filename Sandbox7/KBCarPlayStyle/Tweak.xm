#import <UIKit/UIKit.h>

%hook UIKBScreenTraits
- (long long)idiom {
    return 3;
}
%end

