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

@class SBUIControlCenterLabel; 
static SBUIControlCenterLabel* (*_logos_orig$_ungrouped$SBUIControlCenterLabel$initWithFrame$)(_LOGOS_SELF_TYPE_INIT SBUIControlCenterLabel*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static SBUIControlCenterLabel* _logos_method$_ungrouped$SBUIControlCenterLabel$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBUIControlCenterLabel*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static SBUIControlCenterLabel* _logos_method$_ungrouped$SBUIControlCenterLabel$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBUIControlCenterLabel* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBUIControlCenterLabel = objc_getClass("SBUIControlCenterLabel"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIControlCenterLabel, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$SBUIControlCenterLabel$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$SBUIControlCenterLabel$initWithFrame$);}} }
#line 9 "Tweak.xm"
