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

@class SBLockScreenHintManager; @class _UIGlintyStringView; @class SBLockScreenScrollView; @class SBLockScreenBounceAnimator; @class SBLockScreenView; @class SBSlideUpAppGrabberView; @class SBLockScreenViewController; 
static bool (*_logos_orig$_ungrouped$SBSlideUpAppGrabberView$_shouldUseVibrancy)(_LOGOS_SELF_TYPE_NORMAL SBSlideUpAppGrabberView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBSlideUpAppGrabberView$_shouldUseVibrancy(_LOGOS_SELF_TYPE_NORMAL SBSlideUpAppGrabberView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenScrollView* _LOGOS_SELF_CONST, SEL, id, id); static bool _logos_method$_ungrouped$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenScrollView* _LOGOS_SELF_CONST, SEL, id, id); static bool (*_logos_orig$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST, SEL, id, id); static bool _logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST, SEL, id, id); static bool (*_logos_orig$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenHintManager* _LOGOS_SELF_CONST, SEL, id, CGPoint); static bool _logos_method$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenHintManager* _LOGOS_SELF_CONST, SEL, id, CGPoint); static void (*_logos_orig$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, bool, id); static void (*_logos_orig$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, bool, id); static void (*_logos_orig$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$_UIGlintyStringView$chevron)(_LOGOS_SELF_TYPE_NORMAL _UIGlintyStringView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$_UIGlintyStringView$chevron(_LOGOS_SELF_TYPE_NORMAL _UIGlintyStringView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBLockScreenViewController$shouldShowSlideToUnlockTextImmediately)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBLockScreenViewController$shouldShowSlideToUnlockTextImmediately(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBSlideUpAppGrabberView$_shouldUseVibrancy(_LOGOS_SELF_TYPE_NORMAL SBSlideUpAppGrabberView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    return 0;
}



static bool _logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBounceAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    return 0;
}



static bool _logos_method$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenHintManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, CGPoint arg2) {
    return 0;
}



static void _logos_method$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}



static id _logos_method$_ungrouped$_UIGlintyStringView$chevron(_LOGOS_SELF_TYPE_NORMAL _UIGlintyStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static void _logos_method$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = @"Press home to unlock";
    _logos_orig$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBLockScreenViewController$shouldShowSlideToUnlockTextImmediately(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBSlideUpAppGrabberView = objc_getClass("SBSlideUpAppGrabberView"); { MSHookMessageEx(_logos_class$_ungrouped$SBSlideUpAppGrabberView, @selector(_shouldUseVibrancy), (IMP)&_logos_method$_ungrouped$SBSlideUpAppGrabberView$_shouldUseVibrancy, (IMP*)&_logos_orig$_ungrouped$SBSlideUpAppGrabberView$_shouldUseVibrancy);}Class _logos_class$_ungrouped$SBLockScreenScrollView = objc_getClass("SBLockScreenScrollView"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenScrollView, @selector(gestureRecognizer:shouldReceiveTouch:), (IMP)&_logos_method$_ungrouped$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$);}Class _logos_class$_ungrouped$SBLockScreenBounceAnimator = objc_getClass("SBLockScreenBounceAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenBounceAnimator, @selector(gestureRecognizer:shouldReceiveTouch:), (IMP)&_logos_method$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$);}Class _logos_class$_ungrouped$SBLockScreenHintManager = objc_getClass("SBLockScreenHintManager"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenHintManager, @selector(_isBounceEnabledForController:locationInWindow:), (IMP)&_logos_method$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$);}Class _logos_class$_ungrouped$SBLockScreenView = objc_getClass("SBLockScreenView"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenView, @selector(setTopGrabberHidden:forRequester:), (IMP)&_logos_method$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenView$setTopGrabberHidden$forRequester$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenView, @selector(setBottomGrabberHidden:forRequester:), (IMP)&_logos_method$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenView, @selector(setCustomSlideToUnlockText:), (IMP)&_logos_method$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$);}Class _logos_class$_ungrouped$_UIGlintyStringView = objc_getClass("_UIGlintyStringView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIGlintyStringView, @selector(chevron), (IMP)&_logos_method$_ungrouped$_UIGlintyStringView$chevron, (IMP*)&_logos_orig$_ungrouped$_UIGlintyStringView$chevron);}Class _logos_class$_ungrouped$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenViewController, @selector(shouldShowSlideToUnlockTextImmediately), (IMP)&_logos_method$_ungrouped$SBLockScreenViewController$shouldShowSlideToUnlockTextImmediately, (IMP*)&_logos_orig$_ungrouped$SBLockScreenViewController$shouldShowSlideToUnlockTextImmediately);}} }
#line 61 "Tweak.xm"
