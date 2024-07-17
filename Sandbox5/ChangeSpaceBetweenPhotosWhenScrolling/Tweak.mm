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

@class PUOneUpSettings; 
static void (*_logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 5;
    _logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUOneUpSettings = objc_getClass("PUOneUpSettings"); { MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(setInterpageSpacing:), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$);}} }
#line 11 "Tweak.xm"
