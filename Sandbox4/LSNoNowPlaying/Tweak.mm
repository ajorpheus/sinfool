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

@class SBLockScreenNowPlayingController; 
static void (*_logos_orig$_ungrouped$SBLockScreenNowPlayingController$setEnabled$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNowPlayingController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBLockScreenNowPlayingController$setEnabled$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNowPlayingController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBLockScreenNowPlayingController$setEnabled$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNowPlayingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBLockScreenNowPlayingController$setEnabled$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenNowPlayingController = objc_getClass("SBLockScreenNowPlayingController"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenNowPlayingController, @selector(setEnabled:), (IMP)&_logos_method$_ungrouped$SBLockScreenNowPlayingController$setEnabled$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenNowPlayingController$setEnabled$);}} }
#line 10 "Tweak.xm"
