#import <UIKit/UIKit.h>

%hook MPVolumeController
- (float)setVolumeValue:(float)arg1 {
    // Set Volume...  (Arg#1) Range: 0.0 - 1.0  (.5=50%, 1.0=100% etc)
    arg1 = 0.5;
    return %orig;
}
%end

