#import <UIKit/UIKit.h>

%hook PUGridZoomLevelInfo
- (bool)wantsAutomaticContentOffsetAdjustment {
    // Open Collections At Bottom: (Yes=F, Stock=P)
    return 0;
}
%end

%hook PUMomentsZoomLevelManager
- (unsigned long long)preferredDefaultZoomLevel {
    return 2;
}
%end

%hook PUTabbedLibraryViewController
- (int)_contentModeForNavigationController:(id)arg1 {
}
%end

