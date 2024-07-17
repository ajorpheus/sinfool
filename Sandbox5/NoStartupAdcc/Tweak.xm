#import <UIKit/UIKit.h>

%hook AETNVideoSplashScreenViewController
- (BOOL)isFinished {
    return 1;
}
%end

