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

@class SBControlColorSettings; @class SBRootSettings; 
static SBControlColorSettings* (*_logos_orig$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$)(_LOGOS_SELF_TYPE_INIT SBControlColorSettings*, SEL, id, id, id, id) _LOGOS_RETURN_RETAINED; static SBControlColorSettings* _logos_method$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(_LOGOS_SELF_TYPE_INIT SBControlColorSettings*, SEL, id, id, id, id) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$SBRootSettings$notificationCenterSettings)(_LOGOS_SELF_TYPE_NORMAL SBRootSettings* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBRootSettings$notificationCenterSettings(_LOGOS_SELF_TYPE_NORMAL SBRootSettings* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static SBControlColorSettings* _logos_method$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(_LOGOS_SELF_TYPE_INIT SBControlColorSettings* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    arg4 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(self, _cmd, arg1, arg2, arg3, arg4);
}



static id _logos_method$_ungrouped$SBRootSettings$notificationCenterSettings(_LOGOS_SELF_TYPE_NORMAL SBRootSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBControlColorSettings = objc_getClass("SBControlColorSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlColorSettings, @selector(initWithTintColor:selectedTintColor:textColor:selectedTextColor:), (IMP)&_logos_method$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$, (IMP*)&_logos_orig$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$);}Class _logos_class$_ungrouped$SBRootSettings = objc_getClass("SBRootSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBRootSettings, @selector(notificationCenterSettings), (IMP)&_logos_method$_ungrouped$SBRootSettings$notificationCenterSettings, (IMP*)&_logos_orig$_ungrouped$SBRootSettings$notificationCenterSettings);}} }
#line 18 "Tweak.xm"
