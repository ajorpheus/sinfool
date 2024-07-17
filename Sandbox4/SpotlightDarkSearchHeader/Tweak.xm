#import <UIKit/UIKit.h>

%hook SPUISearchHeader
- (void)updateBlurProgress:(double)arg1 {
    // 1=Dark (Semi-Transparent), 2=Dark (Opaque) etc.
    arg1 = 1;
    %orig;
}
%end

%hook SPUINavigationBar
- (void)updateBlurProgress:(double)arg1 animated:(bool)arg2 {
    arg1 = 0;
    %orig;
}
%end

