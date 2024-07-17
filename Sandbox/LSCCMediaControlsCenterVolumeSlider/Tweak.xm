#import <UIKit/UIKit.h>

%hook MPVolumeController
- (float)_volumeFromAVController {
    return 0.5;
}
%end

