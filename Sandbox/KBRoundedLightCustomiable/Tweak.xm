#import <UIKit/UIKit.h>

%hook UIMorphingLabel
- (void)setTextColor:(id)arg1 {
    // Predictive Text Color: ...Set Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:113/255.0];
    %orig;
}
%end

%hook UIKBRenderConfig
- (long long)backdropStyle {
    // Backdrop Style: (Transparent=-2, Light Blur=-1, Blur=0, Dark Alt=1)
    return -1;
}
%end

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
    arg1 = 0.7;
    %orig;
}
%end

%hook UIKBRenderTraits
- (long long)blendForm {
    // Key - Use Dark Outline: (No=P, Yes=0, Yes w/Lighter Top Keys=2)
    return 0;
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

%hook UIKBRenderConfig
- (bool)whiteText {
    // Key - Use Black Text: (Yes=F) ...Useful For Some Light BG Styles
    return 0;
}
%end

%hook UIDevice
- (long long)_keyboardGraphicsQuality {
    // Key - Pop Up: (Blurred BG=P, Black BG or Transparent If Below Is "0"=10)
    return 10;
}
%end

%hook UIKBRenderGeometry
- (int)popupBias {
    // Key - Pop Up: (If Above Is "10", Transparent w/Black Key Press=0, Stock=P)
    return 0;
}
%end

%hook UITextInputTraits
- (bool)suppressReturnKeyStyling {
    // Return Key - Suppress Styling
    return 1;
}
%end

