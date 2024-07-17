#import <UIKit/UIKit.h>

%hook SBLockScreenSettings
- (float)lockToUnlockSlideCompletionPercentage {
    // Experiment With Values:  (Stock=pass-through)
    return 0.15;
}
%end

