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

@class SBLockScreenView; @class SBLockScreenViewController; 
static bool (*_logos_orig$_ungrouped$SBLockScreenViewController$shouldShowLockStatusBarTime)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBLockScreenViewController$shouldShowLockStatusBarTime(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, bool, id); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBLockScreenViewController$shouldShowLockStatusBarTime(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenViewController, @selector(shouldShowLockStatusBarTime), (IMP)&_logos_method$_ungrouped$SBLockScreenViewController$shouldShowLockStatusBarTime, (IMP*)&_logos_orig$_ungrouped$SBLockScreenViewController$shouldShowLockStatusBarTime);}Class _logos_class$_ungrouped$SBLockScreenView = objc_getClass("SBLockScreenView"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenView, @selector(setTopGrabberHidden:forRequester:), (IMP)&_logos_method$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$);}} }
#line 18 "Tweak.xm"
