#import <UIKit/UIKit.h>

%hook CAMCaptureConfiguration
- (long long)mode {
    // Camera Mode: (0=Photo, 1=Video/But Causes All Buttons To Overlap On The Left)
    return 0;
}
%end

%hook CAMUserPreferences
- (bool)shouldResetCaptureConfiguration {
    // Reset Capture Configuration (Disabled): Always Need To Swipe Over To Right To Open Video Mode=T
    return 1;
}
%end

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
    // Top Bar BG Style: (Tranparent=1, Semi-Tranparent=0, Black=2)
    return 2;
}
%end

%hook CAMBottomBar
- (long long)backgroundStyle {
    // Bottom Bar BG Style: (Tranparent=1, Semi-Tranparent=0, Black=2)
    return 2;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideElapsedTimeViewForGraphConfiguration:(id)arg1 {
    // Hide Elapsed Time
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideStillDuringVideoButtonForGraphConfiguration:(id)arg1 {
    // Hide Still Capture During Video Button
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFramerateIndicatorForGraphConfiguration:(id)arg1 {
    // Hide Framerate Indicator
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldRotateTopBarForGraphConfiguration:(id)arg1 {
    // Stop Top Bar Rotation
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFlashButtonForGraphConfiguration:(id)arg1 {
    // Show Flash Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideHDRButtonForGraphConfiguration:(id)arg1 {
    // Show HDR Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideIrisButtonForGraphConfiguration:(id)arg1 {
    // Show Live Photo Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideTimerButtonForGraphConfiguration:(id)arg1 {
    // Show Timer Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFlipButtonForGraphConfiguration:(id)arg1 {
    // Show Flip Button
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideImageWellForGraphConfiguration:(id)arg1 {
    // Show Image Well
    return 0;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFilterButtonForGraphConfiguration:(id)arg1 {
    // Show Filter Button
    return 0;
}
%end

