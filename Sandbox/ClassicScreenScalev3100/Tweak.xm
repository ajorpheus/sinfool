#import <UIKit/UIKit.h>

%hook UIApplication
- (void)_setClassicMode:(long long)arg1 {
    arg1 = 1;
    %orig;
}
%end

