#import <UIKit/UIKit.h>

%hook SBLegibilitySettings
- (void)setIconLabelDarkShadowStrength:(float)arg1 {
    arg1 = -1;
    %orig;
}
%end

%hook SBLegibilitySettings
- (void)setIconLabelLightShadowStrength:(float)arg1 {
    arg1 = -1;
    %orig;
}
%end

