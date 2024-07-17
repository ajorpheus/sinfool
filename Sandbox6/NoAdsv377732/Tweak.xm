#import <UIKit/UIKit.h>

%hook GPMAdController
- (id)init {
    return NULL;
}
%end

%hook Track
- (bool)isAudioAd {
    return 0;
}
%end

%hook RadioConstraints
- (double)skipEnforcementPeriod {
    return 0;
}
%end

