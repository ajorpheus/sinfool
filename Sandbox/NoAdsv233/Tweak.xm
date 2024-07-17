#import <UIKit/UIKit.h>

%hook HZSegmentationFrequencyLimitRule
- (bool)adsEnabled {
    return 0;
}
%end

