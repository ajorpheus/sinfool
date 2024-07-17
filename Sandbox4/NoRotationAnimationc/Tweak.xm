#import <UIKit/UIKit.h>

%hook UIDevice
- (void)setOrientation:(long long)arg1 animated:(bool)arg2 {
    arg2 = 0;
    %orig;
}
%end

