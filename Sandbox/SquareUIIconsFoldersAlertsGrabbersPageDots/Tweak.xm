#import <UIKit/UIKit.h>

%hook CALayer
- (void)setCornerRadius:(double)arg1 {
    // Corners²
    arg1 = 0;
    %orig;
}
%end

%hook SBControlCenterGrabberView
- (id)chevronView {
    // CC Grabber²
    return NULL;
}
%end

%hook SBNotificationCenterViewController
- (id)grabberView {
    // NC Grabber²
    return NULL;
}
%end

%hook SBFolderIconImageView
- (id)darkeningOverlayImage {
    // No Folder Press Highlight
    return NULL;
}
%end

%hook SBFolderBackgroundView
- (id)initWithFrame:(CGRect)arg1 {
    // No Open Folder BG
    return NULL;
}
%end

%hook SBIconImageView
- (void)setShowsSquareCorners:(bool)arg1 {
    // Open Folder Icon Corners²
    arg1 = 1;
    %orig;
}
%end

