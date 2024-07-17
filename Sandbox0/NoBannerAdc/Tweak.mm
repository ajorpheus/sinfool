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

@class FlurryAdFrame; 
static FlurryAdFrame* (*_logos_orig$_ungrouped$FlurryAdFrame$init)(_LOGOS_SELF_TYPE_INIT FlurryAdFrame*, SEL) _LOGOS_RETURN_RETAINED; static FlurryAdFrame* _logos_method$_ungrouped$FlurryAdFrame$init(_LOGOS_SELF_TYPE_INIT FlurryAdFrame*, SEL) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static FlurryAdFrame* _logos_method$_ungrouped$FlurryAdFrame$init(_LOGOS_SELF_TYPE_INIT FlurryAdFrame* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$FlurryAdFrame = objc_getClass("FlurryAdFrame"); { MSHookMessageEx(_logos_class$_ungrouped$FlurryAdFrame, @selector(init), (IMP)&_logos_method$_ungrouped$FlurryAdFrame$init, (IMP*)&_logos_orig$_ungrouped$FlurryAdFrame$init);}} }
#line 9 "Tweak.xm"
