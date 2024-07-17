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

@class SBIconPageIndicatorImageSetResult; 
static SBIconPageIndicatorImageSetResult* (*_logos_orig$_ungrouped$SBIconPageIndicatorImageSetResult$initWithIndicatorSet$enabledIndicatorSet$)(_LOGOS_SELF_TYPE_INIT SBIconPageIndicatorImageSetResult*, SEL, id, id) _LOGOS_RETURN_RETAINED; static SBIconPageIndicatorImageSetResult* _logos_method$_ungrouped$SBIconPageIndicatorImageSetResult$initWithIndicatorSet$enabledIndicatorSet$(_LOGOS_SELF_TYPE_INIT SBIconPageIndicatorImageSetResult*, SEL, id, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static SBIconPageIndicatorImageSetResult* _logos_method$_ungrouped$SBIconPageIndicatorImageSetResult$initWithIndicatorSet$enabledIndicatorSet$(_LOGOS_SELF_TYPE_INIT SBIconPageIndicatorImageSetResult* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconPageIndicatorImageSetResult = objc_getClass("SBIconPageIndicatorImageSetResult"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconPageIndicatorImageSetResult, @selector(initWithIndicatorSet:enabledIndicatorSet:), (IMP)&_logos_method$_ungrouped$SBIconPageIndicatorImageSetResult$initWithIndicatorSet$enabledIndicatorSet$, (IMP*)&_logos_orig$_ungrouped$SBIconPageIndicatorImageSetResult$initWithIndicatorSet$enabledIndicatorSet$);}} }
#line 9 "Tweak.xm"
