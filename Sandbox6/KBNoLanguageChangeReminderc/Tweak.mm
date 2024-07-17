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

@class UIKeyboardImpl; 
static void (*_logos_orig$_ungrouped$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL, id, bool, bool, id); static void _logos_method$_ungrouped$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL, id, bool, bool, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, bool arg2, bool arg3, id arg4) {
    arg3 = 0;
    _logos_orig$_ungrouped$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$(self, _cmd, arg1, arg2, arg3, arg4);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKeyboardImpl = objc_getClass("UIKeyboardImpl"); { MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardImpl, @selector(setKeyboardInputMode:userInitiated:updateIndicator:executionContext:), (IMP)&_logos_method$_ungrouped$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$, (IMP*)&_logos_orig$_ungrouped$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$);}} }
#line 10 "Tweak.xm"
