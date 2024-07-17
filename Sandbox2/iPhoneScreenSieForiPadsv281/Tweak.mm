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

@class UIApplication; 
static void (*_logos_orig$_ungrouped$UIApplication$_setClassicMode$)(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UIApplication$_setClassicMode$(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$UIApplication$_shouldZoom)(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIApplication$_shouldZoom(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UIApplication$_shouldUseHiResForClassic)(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIApplication$_shouldUseHiResForClassic(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIApplication$_setClassicMode$(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$UIApplication$_setClassicMode$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UIApplication$_shouldZoom(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$UIApplication$_shouldUseHiResForClassic(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIApplication = objc_getClass("UIApplication"); { MSHookMessageEx(_logos_class$_ungrouped$UIApplication, @selector(_setClassicMode:), (IMP)&_logos_method$_ungrouped$UIApplication$_setClassicMode$, (IMP*)&_logos_orig$_ungrouped$UIApplication$_setClassicMode$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIApplication, @selector(_shouldZoom), (IMP)&_logos_method$_ungrouped$UIApplication$_shouldZoom, (IMP*)&_logos_orig$_ungrouped$UIApplication$_shouldZoom);}{ MSHookMessageEx(_logos_class$_ungrouped$UIApplication, @selector(_shouldUseHiResForClassic), (IMP)&_logos_method$_ungrouped$UIApplication$_shouldUseHiResForClassic, (IMP*)&_logos_orig$_ungrouped$UIApplication$_shouldUseHiResForClassic);}} }
#line 22 "Tweak.xm"
