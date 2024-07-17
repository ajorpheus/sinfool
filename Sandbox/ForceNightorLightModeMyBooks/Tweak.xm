#import <UIKit/UIKit.h>

%hook BKLightLevelController
- (long long)currentLightLevel {
    // Light=1,	Dark=2
    return 2;
}
%end

