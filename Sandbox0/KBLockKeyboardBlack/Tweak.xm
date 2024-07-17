#import <UIKit/UIKit.h>

%hook UIKBRenderFactory
- (bool)boldTextEnabled {
    // Bold Text: (Yes=T, No=P)
    return 1;
}
%end

%hook UITextInputTraits
- (bool)suppressReturnKeyStyling {
    // Use Return Key Highlight Styling: (Yes=P, No=T)
    return 1;
}
%end

%hook UIKBRenderTraits
- (void)setBlendForm:(long long)arg1 {
    // Shift & Delete Key Highlight Style: (Dark=1, Light=0)
    arg1 = 1;
    %orig;
}
%end

%hook UIKBTree
- (void)setVisualStyle:(int)arg1 {
    arg1 = 5;
    %orig;
}
%end

%hook UIKBTextStyle
- (void)setTextOpacity:(double)arg1 {
    arg1 = 0.7;
    %orig;
}
%end

%hook UIKBRenderConfig
- (void)setKeycapOpacity:(double)arg1 {
    arg1 = 0.5;
    %orig;
}
%end

%hook UIKBRenderConfig
- (void)setLightKeyboard:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook UIDevice
- (long long)_keyboardGraphicsQuality {
    return 10;
}
%end

