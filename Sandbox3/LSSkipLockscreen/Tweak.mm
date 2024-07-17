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

@class SBLockScreenViewController; @class SBLockScreenDefaults; 
static bool (*_logos_orig$_ungrouped$SBLockScreenViewController$shouldAutoUnlockForSource$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL, int); static bool _logos_method$_ungrouped$SBLockScreenViewController$shouldAutoUnlockForSource$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL, int); static bool (*_logos_orig$_ungrouped$SBLockScreenDefaults$useDashBoard)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDefaults* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBLockScreenDefaults$useDashBoard(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDefaults* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBLockScreenViewController$shouldAutoUnlockForSource$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    return 1;
}



static bool _logos_method$_ungrouped$SBLockScreenDefaults$useDashBoard(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDefaults* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenViewController, @selector(shouldAutoUnlockForSource:), (IMP)&_logos_method$_ungrouped$SBLockScreenViewController$shouldAutoUnlockForSource$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenViewController$shouldAutoUnlockForSource$);}Class _logos_class$_ungrouped$SBLockScreenDefaults = objc_getClass("SBLockScreenDefaults"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenDefaults, @selector(useDashBoard), (IMP)&_logos_method$_ungrouped$SBLockScreenDefaults$useDashBoard, (IMP*)&_logos_orig$_ungrouped$SBLockScreenDefaults$useDashBoard);}} }
#line 15 "Tweak.xm"
