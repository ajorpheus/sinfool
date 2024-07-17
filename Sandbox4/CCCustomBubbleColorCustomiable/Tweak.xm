#import <UIKit/UIKit.h>

%hook CCUIControlCenterSettings
- (void)setBackgroundDarkening:(double)arg1 {
    // Wallpaper Background Darkening: (Range=0.01 - 1.0)
    arg1 = 0.9;
    %orig;
}
%end

%hook UIImageView
- (void)setBackgroundColor:(id)arg1 {
    // Bubble BG - Color
    arg1 = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setCutOutOverlayAlpha:(double)arg1 {
    // Buttons - Alpha: (Range=0.0 - 1.0)
    arg1 = 0.25;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setCutOutOverlayWhite:(double)arg1 {
    // Buttons - White Overlay/Media Picker BG: (Range=0.0 - 2.0), Stock=.5, D=Adaptive Media Picker BG
    arg1 = 0;
    %orig;
}
%end

%hook CCUIControlCenterVisualEffect
- (id)initWithPrivateStyle:(long long)arg1 {
    // Buttons - Text Color: (Black=P, White=1, White w/Blue MP Controls, White w/Black Selected Glyph Toggle=0, White w/Gray Selected/Slider Track/MP Controls=2)
    arg1 = 1;
    return %orig;
}
%end

%hook MPAVRoutingTableViewCell
- (void)setIconStyle:(unsigned long long)arg1 {
    // Buttons - Media Player Icon: (Black=0, White=1)
    arg1 = 1;
    %orig;
}
%end

%hook MPAVRoutingTableViewCell
- (void)setTintColor:(id)arg1 {
    // Buttons - Media Player Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setCcWhiteOverlayAlpha:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setDarkenedWhiteAlpha:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

