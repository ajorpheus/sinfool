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

@class SBLockScreenViewController; @class SBLockScreenBounceAnimator; 
static bool (*_logos_orig$_ungrouped$SBLockScreenViewController$isBounceEnabledForPresentingController$locationInWindow$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL, id, CGPoint); static bool _logos_method$_ungrouped$SBLockScreenViewController$isBounceEnabledForPresentingController$locationInWindow$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL, id, CGPoint); static bool (*_logos_orig$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizerShouldBegin$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizerShouldBegin$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBLockScreenViewController$isBounceEnabledForPresentingController$locationInWindow$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, CGPoint arg2) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizerShouldBegin$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenViewController, @selector(isBounceEnabledForPresentingController:locationInWindow:), (IMP)&_logos_method$_ungrouped$SBLockScreenViewController$isBounceEnabledForPresentingController$locationInWindow$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenViewController$isBounceEnabledForPresentingController$locationInWindow$);}Class _logos_class$_ungrouped$SBLockScreenBounceAnimator = objc_getClass("SBLockScreenBounceAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenBounceAnimator, @selector(gestureRecognizerShouldBegin:), (IMP)&_logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizerShouldBegin$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizerShouldBegin$);}} }
#line 17 "Tweak.xm"
