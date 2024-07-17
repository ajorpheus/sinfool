#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CALayer$setCornerRadius$)(id, SEL, double);
static void _patched_ftt_meth_$CALayer$setCornerRadius$(id self, SEL _cmd, double arg1) {
    // Corners²
    arg1 = 0;
    _orig_ftt_meth_$CALayer$setCornerRadius$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$SBControlCenterGrabberView$chevronView(id self, SEL _cmd) {
    // CC Grabber²
    return NULL;
}

static id _patched_ftt_meth_$SBNotificationCenterViewController$grabberView(id self, SEL _cmd) {
    // NC Grabber²
    return NULL;
}

static id _patched_ftt_meth_$SBFolderIconImageView$darkeningOverlayImage(id self, SEL _cmd) {
    // No Folder Press Highlight
    return NULL;
}

static id _patched_ftt_meth_$SBFolderBackgroundView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // No Open Folder BG
    return NULL;
}

static void (*_orig_ftt_meth_$SBIconImageView$setShowsSquareCorners$)(id, SEL, bool);
static void _patched_ftt_meth_$SBIconImageView$setShowsSquareCorners$(id self, SEL _cmd, bool arg1) {
    // Open Folder Icon Corners²
    arg1 = 1;
    _orig_ftt_meth_$SBIconImageView$setShowsSquareCorners$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CALayer = objc_getClass("CALayer");
    MSHookMessageEx(_ftt_class_CALayer, @selector(setCornerRadius:), (IMP)_patched_ftt_meth_$CALayer$setCornerRadius$, (IMP *)_orig_ftt_meth_$CALayer$setCornerRadius$);
    Class _ftt_class_SBControlCenterGrabberView = objc_getClass("SBControlCenterGrabberView");
    MSHookMessageEx(_ftt_class_SBControlCenterGrabberView, @selector(chevronView), (IMP)_patched_ftt_meth_$SBControlCenterGrabberView$chevronView, NULL);
    Class _ftt_class_SBNotificationCenterViewController = objc_getClass("SBNotificationCenterViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterViewController, @selector(grabberView), (IMP)_patched_ftt_meth_$SBNotificationCenterViewController$grabberView, NULL);
    Class _ftt_class_SBFolderIconImageView = objc_getClass("SBFolderIconImageView");
    MSHookMessageEx(_ftt_class_SBFolderIconImageView, @selector(darkeningOverlayImage), (IMP)_patched_ftt_meth_$SBFolderIconImageView$darkeningOverlayImage, NULL);
    Class _ftt_class_SBFolderBackgroundView = objc_getClass("SBFolderBackgroundView");
    MSHookMessageEx(_ftt_class_SBFolderBackgroundView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$SBFolderBackgroundView$initWithFrame$, NULL);
    Class _ftt_class_SBIconImageView = objc_getClass("SBIconImageView");
    MSHookMessageEx(_ftt_class_SBIconImageView, @selector(setShowsSquareCorners:), (IMP)_patched_ftt_meth_$SBIconImageView$setShowsSquareCorners$, (IMP *)_orig_ftt_meth_$SBIconImageView$setShowsSquareCorners$);
}
