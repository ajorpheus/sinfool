#import <UIKit/UIKit.h>

%hook SNISplashScreenViewController
- (BOOL)isVideoFinished {
    return 1;
}
%end

