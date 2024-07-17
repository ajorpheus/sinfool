#import <UIKit/UIKit.h>

%hook UIKBRenderConfig
- (bool)lightKeyboard {
    // Light KB Config
    return 0;
}
%end

%hook UIKBTree
- (int)visualStyle {
    // Key - Visual Style: (Stock=P, Outlined Entry Keys=5)
    return 5;
}
%end

%hook UIKBRenderGeometry
- (void)setRoundRectRadius:(double)arg1 {
    // Key - Round Radius: (Best Range=0.0-27.0) ...Lower # = More Squared
    arg1 = 16.1;
    %orig;
}
%end

%hook UIKBRenderConfig
- (void)setKeycapOpacity:(double)arg1 {
    // Key - Outline Opacity: (0.0-1.0)
    arg1 = 0;
    %orig;
}
%end

%hook UIKBTextStyle
- (void)setTextOpacity:(double)arg1 {
    // Key - Text Opacity: (0.0-1.0)
    arg1 = 0.7;
    %orig;
}
%end

%hook UIKBRenderFactory
- (bool)boldTextEnabled {
    // Key - Bold Text
    return 1;
}
%end

%hook UIDevice
- (long long)_keyboardGraphicsQuality {
    // Key - Pop Up & (KB BG When No Backdrop Style Used): (Blurred BG=P, Black BG=10)
    return 10;
}
%end

