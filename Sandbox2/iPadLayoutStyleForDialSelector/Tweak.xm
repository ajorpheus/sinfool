#import <UIKit/UIKit.h>

%hook CAMViewfinderViewController
- (long long)_topBarBackgroundStyleForMode:(long long)arg1 {
    // Top Bar BG Style: (Dark Tint=0, Transparent=1, Black=2)
    return 1;
}
%end

%hook CAMViewfinderViewController
- (long long)_bottomBarBackgroundStyleForMode:(long long)arg1 {
    // Bottom Bar BG Style: (Dark Tint=0, Transparent=1, Black=2)
    return 1;
}
%end

%hook CAMModeDial
- (void)setLayoutStyle:(long long)arg1 {
    // Dial Style: (iPhone=0, iPad=1)
    arg1 = 1;
    %orig;
}
%end

%hook CAMFlipButton
- (void)setLayoutStyle:(long long)arg1 {
    // Flip Button Style: (Outline=0, Circle=1, Solid=2)
    arg1 = 2;
    %orig;
}
%end

