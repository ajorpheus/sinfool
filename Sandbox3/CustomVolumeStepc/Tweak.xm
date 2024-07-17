#import <UIKit/UIKit.h>

%hook VolumeControl
- (float)volumeStepUp {
    // Vol "Up" Step Increment:  (0.0-1.0), i.e. 0=none, .032=32, .25=4, .5=2, 1=1
    return 0.25;
}
%end

%hook VolumeControl
- (float)volumeStepDown {
    // Vol "Down" Step Increment:  (0.0-1.0), i.e. 0=none, .032=32, .25=4, .5=2, 1=1
    return 0.5;
}
%end

