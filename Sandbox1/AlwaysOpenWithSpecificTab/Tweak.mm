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

@class PhoneTabBarController; 
static void (*_logos_orig$_ungrouped$PhoneTabBarController$switchToTab$)(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$PhoneTabBarController$switchToTab$(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST, SEL, int); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$PhoneTabBarController$switchToTab$(_LOGOS_SELF_TYPE_NORMAL PhoneTabBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    
    arg1 = 2;
    _logos_orig$_ungrouped$PhoneTabBarController$switchToTab$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PhoneTabBarController = objc_getClass("PhoneTabBarController"); { MSHookMessageEx(_logos_class$_ungrouped$PhoneTabBarController, @selector(switchToTab:), (IMP)&_logos_method$_ungrouped$PhoneTabBarController$switchToTab$, (IMP*)&_logos_orig$_ungrouped$PhoneTabBarController$switchToTab$);}} }
#line 11 "Tweak.xm"
