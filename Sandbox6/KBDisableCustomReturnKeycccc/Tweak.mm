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

@class UIKeyboardImpl; @class UIKeyboardLayoutStar; 
static bool (*_logos_orig$_ungrouped$UIKeyboardImpl$returnKeyEnabled)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKeyboardImpl$returnKeyEnabled(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardLayoutStar* _LOGOS_SELF_CONST, SEL, bool, id, int); static void _logos_method$_ungrouped$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardLayoutStar* _LOGOS_SELF_CONST, SEL, bool, id, int); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UIKeyboardImpl$returnKeyEnabled(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardLayoutStar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2, int arg3) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(self, _cmd, arg1, arg2, arg3);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKeyboardImpl = objc_getClass("UIKeyboardImpl"); { MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardImpl, @selector(returnKeyEnabled), (IMP)&_logos_method$_ungrouped$UIKeyboardImpl$returnKeyEnabled, (IMP*)&_logos_orig$_ungrouped$UIKeyboardImpl$returnKeyEnabled);}Class _logos_class$_ungrouped$UIKeyboardLayoutStar = objc_getClass("UIKeyboardLayoutStar"); { MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardLayoutStar, @selector(setReturnKeyEnabled:withDisplayName:withType:), (IMP)&_logos_method$_ungrouped$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$, (IMP*)&_logos_orig$_ungrouped$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$);}} }
#line 18 "Tweak.xm"
