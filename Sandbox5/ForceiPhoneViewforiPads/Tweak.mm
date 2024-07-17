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

@class UIDevice; @class UIWindow; 
static long long (*_logos_orig$_ungrouped$UIDevice$userInterfaceIdiom)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIDevice$userInterfaceIdiom(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIDevice$setOrientation$animated$)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL, long long, bool); static void _logos_method$_ungrouped$UIDevice$setOrientation$animated$(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL, long long, bool); static bool (*_logos_orig$_ungrouped$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$)(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST, SEL, long long, bool, bool*); static bool _logos_method$_ungrouped$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST, SEL, long long, bool, bool*); static void (*_logos_orig$_ungrouped$UIWindow$_updateToInterfaceOrientation$duration$force$)(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST, SEL, long long, double, bool); static void _logos_method$_ungrouped$UIWindow$_updateToInterfaceOrientation$duration$force$(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST, SEL, long long, double, bool); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$UIDevice$userInterfaceIdiom(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, bool arg2, bool* arg3) {
    
    return 1;
}



static void _logos_method$_ungrouped$UIWindow$_updateToInterfaceOrientation$duration$force$(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, double arg2, bool arg3) {
    
    arg3 = 0;
    _logos_orig$_ungrouped$UIWindow$_updateToInterfaceOrientation$duration$force$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$UIDevice$setOrientation$animated$(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, bool arg2) {
    
    arg2 = 0;
    _logos_orig$_ungrouped$UIDevice$setOrientation$animated$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); { MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(userInterfaceIdiom), (IMP)&_logos_method$_ungrouped$UIDevice$userInterfaceIdiom, (IMP*)&_logos_orig$_ungrouped$UIDevice$userInterfaceIdiom);}{ MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(setOrientation:animated:), (IMP)&_logos_method$_ungrouped$UIDevice$setOrientation$animated$, (IMP*)&_logos_orig$_ungrouped$UIDevice$setOrientation$animated$);}Class _logos_class$_ungrouped$UIWindow = objc_getClass("UIWindow"); { MSHookMessageEx(_logos_class$_ungrouped$UIWindow, @selector(_shouldAutorotateToInterfaceOrientation:checkForDismissal:isRotationDisabled:), (IMP)&_logos_method$_ungrouped$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$, (IMP*)&_logos_orig$_ungrouped$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIWindow, @selector(_updateToInterfaceOrientation:duration:force:), (IMP)&_logos_method$_ungrouped$UIWindow$_updateToInterfaceOrientation$duration$force$, (IMP*)&_logos_orig$_ungrouped$UIWindow$_updateToInterfaceOrientation$duration$force$);}} }
#line 33 "Tweak.xm"
