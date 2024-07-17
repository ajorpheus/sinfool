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

@class SBUIAnimationZoomDownApp; @class SBApplication; 
static void (*_logos_orig$_ungrouped$SBUIAnimationZoomDownApp$_setHidden$)(_LOGOS_SELF_TYPE_NORMAL SBUIAnimationZoomDownApp* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBUIAnimationZoomDownApp$_setHidden$(_LOGOS_SELF_TYPE_NORMAL SBUIAnimationZoomDownApp* _LOGOS_SELF_CONST, SEL, bool); static long long (*_logos_orig$_ungrouped$SBApplication$wallpaperStyle)(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$SBApplication$wallpaperStyle(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBUIAnimationZoomDownApp$_setHidden$(_LOGOS_SELF_TYPE_NORMAL SBUIAnimationZoomDownApp* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBUIAnimationZoomDownApp$_setHidden$(self, _cmd, arg1);
}



static long long _logos_method$_ungrouped$SBApplication$wallpaperStyle(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBUIAnimationZoomDownApp = objc_getClass("SBUIAnimationZoomDownApp"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIAnimationZoomDownApp, @selector(_setHidden:), (IMP)&_logos_method$_ungrouped$SBUIAnimationZoomDownApp$_setHidden$, (IMP*)&_logos_orig$_ungrouped$SBUIAnimationZoomDownApp$_setHidden$);}Class _logos_class$_ungrouped$SBApplication = objc_getClass("SBApplication"); { MSHookMessageEx(_logos_class$_ungrouped$SBApplication, @selector(wallpaperStyle), (IMP)&_logos_method$_ungrouped$SBApplication$wallpaperStyle, (IMP*)&_logos_orig$_ungrouped$SBApplication$wallpaperStyle);}} }
#line 16 "Tweak.xm"
