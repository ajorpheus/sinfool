#import <UIKit/UIKit.h>

%hook CAMUserPreferences
- (bool)shouldResetCaptureConfiguration {
    // Always Reset Capture Configurations On Open
    return 1;
}
%end

%hook CAMViewfinderViewController
- (long long)_aspectRatioForMode:(long long)arg1 {
    // Camera Viewfinder Style/Top & Bottom Bar Size:  (Pass-Through:Auto, 0:Photo, 1:Video, 3:Square)
    return 1;
}
%end

%hook CAMTopBar
- (long long)backgroundStyle {
    // Top Bar Background Style [Video]:  (0:Tinted, 1:Transparent, 2:Black)
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFlashButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Flash Button
    return 1;
}
%end

%hook CAMViewfinderViewController
- (id)_flashBadge {
    // Flash Badge
    return NULL;
}
%end

%hook CAMFlashButton
- (id)_warningIndicatorView {
    // Flash Warning Button
    return NULL;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideHDRButtonForMode:(long long)arg1 device:(long long)arg2 {
    // HDR Button
    return 1;
}
%end

%hook CAMViewfinderViewController
- (id)_HDRBadge {
    // HDR Badge
    return NULL;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideIrisButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Live Photo Button
    return 1;
}
%end

%hook CAMViewfinderViewController
- (id)_livePhotoBadge {
    // Live Photo Badge
    return NULL;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideTimerButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Timer Button
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFlipButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Flip Button
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideElapsedTimeViewForMode:(long long)arg1 device:(long long)arg2 {
    // Elapsed Time
    return 1;
}
%end

%hook CAMFocusIndicatorRectView
- (id)initWithSize:(long long)arg1 {
    // Auto Focus Box
    return NULL;
}
%end

%hook CAMPreviewViewController
- (bool)_showExposureBiasSliderForPointView {
    // Bias Slider
    return 0;
}
%end

%hook CAMZoomSlider
- (id)initWithFrame:(CGRect)arg1 {
    // Zoom Slider
    return NULL;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHidePanoramaViewForMode:(long long)arg1 device:(long long)arg2 {
    // Panorama Instructions
    return 1;
}
%end

%hook CAMBottomBar
- (long long)backgroundStyle {
    // Bottom Bar Background Style [Video]:  (0:Tinted, 1:Transparent, 2:Black)
    return 1;
}
%end

%hook CAMModeDial
- (id)initWithFrame:(CGRect)arg1 {
    // Dial Selector
    return NULL;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideImageWellForMode:(long long)arg1 device:(long long)arg2 {
    // Image Well
    return 1;
}
%end

%hook CUShutterButton
- (double)_borderWidthForMode:(long long)arg1 {
    // Shutter Button Outside Ring:  (0:Transparent)
    return 0;
}
%end

%hook CUShutterButton
- (id)_colorForMode:(long long)arg1 {
    // Shutter Button Inside Color/Style:  (-1:Transparent, 0:White, 1:Red)
    arg1 = -1;
    return %orig;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFilterButtonForMode:(long long)arg1 device:(long long)arg2 {
    // Filter Button
    return 1;
}
%end

%hook CAMViewfinderViewController
- (bool)_shouldHideFramerateIndicatorForMode:(long long)arg1 device:(long long)arg2 {
    // Framerate Indicator
    return 1;
}
%end

