#import <UIKit/UIKit.h>

%hook CAMFocusIndicatorRectView
- (id)initWithSize:(long long)arg1 {
    // Focus Box
    return NULL;
}
%end

%hook CAMPreviewViewController
- (bool)_showExposureBiasSliderForPointView {
    // Bias Slider
    return 0;
}
%end

