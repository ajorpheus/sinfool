#import <UIKit/UIKit.h>

%hook NBAUserSettingsManager
- (BOOL)firstAppStarted {
    return 0;
}
%end

