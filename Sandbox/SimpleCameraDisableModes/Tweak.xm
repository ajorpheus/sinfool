#import <UIKit/UIKit.h>

%hook CAMCaptureCapabilities
- (bool)isBackTimelapseSupported {
    // Timelapse #1
    return 0;
}
%end

%hook CAMCaptureCapabilities
- (bool)isFrontTimelapseSupported {
    // Timelapse #2
    return 0;
}
%end

%hook CAMCaptureCapabilities
- (bool)isBackSlomoSupported {
    // Slomo #1
    return 0;
}
%end

%hook CAMCaptureCapabilities
- (bool)isFrontSlomoSupported {
    // Slomo #2
    return 0;
}
%end

%hook CAMCaptureCapabilities
- (bool)isSquareModeSupported {
    // Square
    return 0;
}
%end

%hook CAMCaptureCapabilities
- (bool)isBackPanoramaSupported {
    // Panorama #1
    return 0;
}
%end

%hook CAMCaptureCapabilities
- (bool)isFrontPanoramaSupported {
    // Panorama #2
    return 0;
}
%end

%hook CAMModeDial
- (id)initWithFrame:(CGRect)arg1 {
    // Remove Mode Text From Dial, "Photo" etc
    return NULL;
}
%end

