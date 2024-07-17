#import <UIKit/UIKit.h>

%hook SBWallpaperEffectView
- (void)setStyle:(long long)arg1 {
    // No Blur=0, Black=2, Less Blur=3, Lesser Blur=4, Soft Blur=5, Light Gray=9, Frosted Blur=10, Frost=13, Dark Blur=14, White Blur=15, Glass Blur=16, Dark Tint=19
    arg1 = 14;
    %orig;
}
%end

