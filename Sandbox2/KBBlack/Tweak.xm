#import <UIKit/UIKit.h>

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

