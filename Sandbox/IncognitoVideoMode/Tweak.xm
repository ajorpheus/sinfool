#import <UIKit/UIKit.h>

%hook CUShutterButton
- (void)setMode:(long long)arg1 animated:(bool)arg2 {
    // Shutter Button Mode
    arg1 = 0;
    %orig;
}
%end

%hook CAMModeDial
- (void)setSelectedMode:(long long)arg1 animated:(bool)arg2 {
    // Dial Selected Mode
    arg1 = 0;
    %orig;
}
%end

%hook CAMTopBar
- (long long)backgroundStyle {
    // Top Bar BG Style
    return 2;
}
%end

%hook CAMBottomBar
- (long long)backgroundStyle {
    // Bottom Bar BG Style
    return 2;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideElapsedTimeViewForMode:(long long)arg1 device:(long long)arg2 {
    // Hide Elapsed Time
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideStillDuringVideoButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Hide Still Capture During Video Button
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFramerateIndicatorForMode:(long long)arg1 device:(long long)arg2 {
    // Hide Framerate Indicator
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldRotateTopBarForMode:(long long)arg1 device:(long long)arg2 {
    // Stop Top Bar Rotation
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFlashButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Show Flash Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideHDRButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Show HDR Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideIrisButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Show Live Photo Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideTimerButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Show Timer Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFlipButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Show Flip Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideImageWellForMode:(long long)arg1 device:(long long)arg2 {
    // Show Image Well
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFilterButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Show Filter Button
    return 0;
}
%end

