#import <UIKit/UIKit.h>

%hook NBCDSplashScreenViewController
- (BOOL)isVideoFinished {
    return 1;
}
%end

