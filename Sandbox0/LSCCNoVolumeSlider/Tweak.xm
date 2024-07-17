#import <UIKit/UIKit.h>

%hook MPUMediaControlsVolumeView
- (id)_createVolumeSliderView {
    // •
    return NULL;
}
%end

