#import <UIKit/UIKit.h>

%hook SBApplication
- (bool)_shouldUseSnapshotForAppLaunchIfPossible {
    return 1;
}
%end

