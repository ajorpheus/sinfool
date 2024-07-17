#import <UIKit/UIKit.h>

%hook VolumeControl
- (float)volumeStepUp {
    // Step "Up" Increment %:  (Range: 0.0 - 1.0), i.e. 0=none, .25=4, .5=2, 1=1
    return 0.25;
}
%end

%hook VolumeControl
- (float)volumeStepDown {
    // Step "Down" Increment %:  (Range: 0.0 - 1.0), i.e. 0=none, .25=4, .5=2, 1=1
    return 0.5;
}
%end

