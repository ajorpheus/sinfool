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

@class UINavigationItemButtonView; @class UINavigationButton; 
static void (*_logos_orig$_ungrouped$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$)(_LOGOS_SELF_TYPE_NORMAL UINavigationItemButtonView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$(_LOGOS_SELF_TYPE_NORMAL UINavigationItemButtonView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UINavigationButton$_setAccessibilityBackgroundTintColor$)(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UINavigationButton$_setAccessibilityBackgroundTintColor$(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$(_LOGOS_SELF_TYPE_NORMAL UINavigationItemButtonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:210/255.0 green:228/255.0 blue:248/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UINavigationButton$_setAccessibilityBackgroundTintColor$(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:210/255.0 green:228/255.0 blue:249/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UINavigationButton$_setAccessibilityBackgroundTintColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UINavigationItemButtonView = objc_getClass("UINavigationItemButtonView"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationItemButtonView, @selector(_setAccessibilityBackgroundTintColor:), (IMP)&_logos_method$_ungrouped$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$, (IMP*)&_logos_orig$_ungrouped$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$);}Class _logos_class$_ungrouped$UINavigationButton = objc_getClass("UINavigationButton"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationButton, @selector(_setAccessibilityBackgroundTintColor:), (IMP)&_logos_method$_ungrouped$UINavigationButton$_setAccessibilityBackgroundTintColor$, (IMP*)&_logos_orig$_ungrouped$UINavigationButton$_setAccessibilityBackgroundTintColor$);}} }
#line 19 "Tweak.xm"
