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

@class SBLockScreenBounceAnimator; @class SBLockScreenHintManager; 
static bool (*_logos_orig$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST, SEL, id, id); static bool _logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST, SEL, id, id); static bool (*_logos_orig$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenHintManager* _LOGOS_SELF_CONST, SEL, id, CGPoint); static bool _logos_method$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenHintManager* _LOGOS_SELF_CONST, SEL, id, CGPoint); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    return 0;
}



static bool _logos_method$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenHintManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, CGPoint arg2) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenBounceAnimator = objc_getClass("SBLockScreenBounceAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenBounceAnimator, @selector(gestureRecognizer:shouldReceiveTouch:), (IMP)&_logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$);}Class _logos_class$_ungrouped$SBLockScreenHintManager = objc_getClass("SBLockScreenHintManager"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenHintManager, @selector(_isBounceEnabledForController:locationInWindow:), (IMP)&_logos_method$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$);}} }
#line 15 "Tweak.xm"
