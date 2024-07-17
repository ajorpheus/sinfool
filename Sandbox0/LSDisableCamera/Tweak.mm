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

@class SBDashBoardPageControl; @class SpringBoard; 
static bool (*_logos_orig$_ungrouped$SpringBoard$lockScreenCameraSupported)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SpringBoard$lockScreenCameraSupported(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBDashBoardPageControl$setCameraPageEnabled$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardPageControl* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBDashBoardPageControl$setCameraPageEnabled$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardPageControl* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$SBDashBoardPageControl$isCameraPageEnabled)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardPageControl* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBDashBoardPageControl$isCameraPageEnabled(_LOGOS_SELF_TYPE_NORMAL SBDashBoardPageControl* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SpringBoard$lockScreenCameraSupported(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static void _logos_method$_ungrouped$SBDashBoardPageControl$setCameraPageEnabled$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBDashBoardPageControl$setCameraPageEnabled$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBDashBoardPageControl$isCameraPageEnabled(_LOGOS_SELF_TYPE_NORMAL SBDashBoardPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); { MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(lockScreenCameraSupported), (IMP)&_logos_method$_ungrouped$SpringBoard$lockScreenCameraSupported, (IMP*)&_logos_orig$_ungrouped$SpringBoard$lockScreenCameraSupported);}Class _logos_class$_ungrouped$SBDashBoardPageControl = objc_getClass("SBDashBoardPageControl"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardPageControl, @selector(setCameraPageEnabled:), (IMP)&_logos_method$_ungrouped$SBDashBoardPageControl$setCameraPageEnabled$, (IMP*)&_logos_orig$_ungrouped$SBDashBoardPageControl$setCameraPageEnabled$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardPageControl, @selector(isCameraPageEnabled), (IMP)&_logos_method$_ungrouped$SBDashBoardPageControl$isCameraPageEnabled, (IMP*)&_logos_orig$_ungrouped$SBDashBoardPageControl$isCameraPageEnabled);}} }
#line 22 "Tweak.xm"
