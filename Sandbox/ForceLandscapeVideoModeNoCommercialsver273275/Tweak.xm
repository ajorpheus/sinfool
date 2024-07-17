#import <UIKit/UIKit.h>

%hook StartupViewController
- (int)forcedOrientation {
    return 3;
}
%end

%hook DSOrientationManager
- (int)currentForcedInterfaceOrientation {
    return 3;
}
%end

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

%hook DSOrientationManager
- (unsigned int)currentForcedInterfaceOrientationMask {
    // ⚠️ ATTN: iPad Users  •••Change this to "pass-through"•••
    return 3;
}
%end

