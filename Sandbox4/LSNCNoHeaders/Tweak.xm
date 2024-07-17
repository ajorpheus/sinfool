#import <UIKit/UIKit.h>

%hook NCMaterialView
- (id)initWithStyleOptions:(unsigned long long)arg1 materialSettings:(id)arg2 captureOnly:(bool)arg3 {
    // BG Style: 0=Transparent, 1=Semi-Transparent (on LS), 2-7=Different Looks
    arg1 = 3;
    return %orig;
}
%end

%hook NCMaterialSettings
- (void)setWhiteAlpha:(double)arg1 {
    // White Alpha: 0.0-1.0 (or delete this unit)
    arg1 = 0.6;
    %orig;
}
%end

%hook NCShortLookView
- (bool)isHeaderHidden {
    return 1;
}
%end

