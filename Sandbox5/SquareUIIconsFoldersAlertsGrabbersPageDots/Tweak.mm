#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class SBFolderIconImageView; @class SBControlCenterGrabberView; @class SBNotificationCenterViewController; @class CALayer; @class SBFolderBackgroundView; @class SBIconImageView; 
static void (*_logos_orig$_ungrouped$CALayer$setCornerRadius$)(_LOGOS_SELF_TYPE_NORMAL CALayer* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$CALayer$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL CALayer* _LOGOS_SELF_CONST, SEL, double); static id (*_logos_orig$_ungrouped$SBControlCenterGrabberView$chevronView)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterGrabberView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBControlCenterGrabberView$chevronView(_LOGOS_SELF_TYPE_NORMAL SBControlCenterGrabberView* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SBNotificationCenterViewController$grabberView)(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBNotificationCenterViewController$grabberView(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SBFolderIconImageView$darkeningOverlayImage)(_LOGOS_SELF_TYPE_NORMAL SBFolderIconImageView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBFolderIconImageView$darkeningOverlayImage(_LOGOS_SELF_TYPE_NORMAL SBFolderIconImageView* _LOGOS_SELF_CONST, SEL); static SBFolderBackgroundView* (*_logos_orig$_ungrouped$SBFolderBackgroundView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT SBFolderBackgroundView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static SBFolderBackgroundView* _logos_method$_ungrouped$SBFolderBackgroundView$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBFolderBackgroundView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SBIconImageView$setShowsSquareCorners$)(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBIconImageView$setShowsSquareCorners$(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CALayer$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL CALayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$CALayer$setCornerRadius$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$SBControlCenterGrabberView$chevronView(_LOGOS_SELF_TYPE_NORMAL SBControlCenterGrabberView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$SBNotificationCenterViewController$grabberView(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$SBFolderIconImageView$darkeningOverlayImage(_LOGOS_SELF_TYPE_NORMAL SBFolderIconImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static SBFolderBackgroundView* _logos_method$_ungrouped$SBFolderBackgroundView$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBFolderBackgroundView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static void _logos_method$_ungrouped$SBIconImageView$setShowsSquareCorners$(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBIconImageView$setShowsSquareCorners$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CALayer = objc_getClass("CALayer"); { MSHookMessageEx(_logos_class$_ungrouped$CALayer, @selector(setCornerRadius:), (IMP)&_logos_method$_ungrouped$CALayer$setCornerRadius$, (IMP*)&_logos_orig$_ungrouped$CALayer$setCornerRadius$);}Class _logos_class$_ungrouped$SBControlCenterGrabberView = objc_getClass("SBControlCenterGrabberView"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterGrabberView, @selector(chevronView), (IMP)&_logos_method$_ungrouped$SBControlCenterGrabberView$chevronView, (IMP*)&_logos_orig$_ungrouped$SBControlCenterGrabberView$chevronView);}Class _logos_class$_ungrouped$SBNotificationCenterViewController = objc_getClass("SBNotificationCenterViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationCenterViewController, @selector(grabberView), (IMP)&_logos_method$_ungrouped$SBNotificationCenterViewController$grabberView, (IMP*)&_logos_orig$_ungrouped$SBNotificationCenterViewController$grabberView);}Class _logos_class$_ungrouped$SBFolderIconImageView = objc_getClass("SBFolderIconImageView"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolderIconImageView, @selector(darkeningOverlayImage), (IMP)&_logos_method$_ungrouped$SBFolderIconImageView$darkeningOverlayImage, (IMP*)&_logos_orig$_ungrouped$SBFolderIconImageView$darkeningOverlayImage);}Class _logos_class$_ungrouped$SBFolderBackgroundView = objc_getClass("SBFolderBackgroundView"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolderBackgroundView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$SBFolderBackgroundView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$SBFolderBackgroundView$initWithFrame$);}Class _logos_class$_ungrouped$SBIconImageView = objc_getClass("SBIconImageView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconImageView, @selector(setShowsSquareCorners:), (IMP)&_logos_method$_ungrouped$SBIconImageView$setShowsSquareCorners$, (IMP*)&_logos_orig$_ungrouped$SBIconImageView$setShowsSquareCorners$);}} }
#line 47 "Tweak.xm"
