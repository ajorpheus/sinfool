#import <UIKit/UIKit.h>

%hook CCUIControlCenterSettings
- (void)setBackgroundDarkening:(double)arg1 {
    // Wallpaper Background Darkening: (Range=0.01 - 1.0)
    arg1 = 0.9;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setDarkenedWhiteAlpha:(double)arg1 {
    // Bubble BG - Darkend White Alpha: (Range=0.0 - 1.0)
    arg1 = 0;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setCcWhiteOverlayAlpha:(double)arg1 {
    // Bubble BG - White Overlay Alpha: (Range=0.0 - 1.0)
    arg1 = 0;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setBlurRadius:(double)arg1 {
    // Bubble BG - Blur Radius: (Range=0.0 - 100) 100=Stock but you can get many different effects using much higher numbers
    arg1 = 100;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setSaturation:(double)arg1 {
    // Bubble BG - Saturation: (Range= 0.0+) Stock=2, Darker=1,Dark Gray=0, Vibrant=3+ Psychedelic=20/40 etc so experiment as you choose but note that using much higher numbers will also change the LS/NC/Banner bubbles appearance
    arg1 = 2;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setCutOutOverlayAlpha:(double)arg1 {
    // Buttons - Alpha: (Range=0.0 - 1.0)
    arg1 = 0.65;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setCutOutOverlayWhite:(double)arg1 {
    // Buttons - White Overlay: (Range=0.0 - 2.0)
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

