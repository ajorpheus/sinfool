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

@class _UIBarBackground; @class UINavigationBar; 
static void (*_logos_orig$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$)(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL, long long, id, bool); static void _logos_method$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL, long long, id, bool); static long long (*_logos_orig$_ungrouped$UINavigationBar$_barStyle$)(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL, bool); static long long _logos_method$_ungrouped$UINavigationBar$_barStyle$(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, id arg2, bool arg3) {
    
    arg2 = [UIColor colorWithRed:29/255.0 green:29/255.0 blue:29/255.0 alpha:255/255.0];
    arg1 = 1;
    _logos_orig$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(self, _cmd, arg1, arg2, arg3);
}



static long long _logos_method$_ungrouped$UINavigationBar$_barStyle$(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIBarBackground = objc_getClass("_UIBarBackground"); { MSHookMessageEx(_logos_class$_ungrouped$_UIBarBackground, @selector(configureEffectForStyle:backgroundTintColor:forceOpaque:), (IMP)&_logos_method$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$, (IMP*)&_logos_orig$_ungrouped$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$);}Class _logos_class$_ungrouped$UINavigationBar = objc_getClass("UINavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationBar, @selector(_barStyle:), (IMP)&_logos_method$_ungrouped$UINavigationBar$_barStyle$, (IMP*)&_logos_orig$_ungrouped$UINavigationBar$_barStyle$);}} }
#line 19 "Tweak.xm"
