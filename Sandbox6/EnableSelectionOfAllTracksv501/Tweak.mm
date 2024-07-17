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

@class SXMPlaybackRestrictions; 
static unsigned long long (*_logos_orig$_ungrouped$SXMPlaybackRestrictions$navigationType)(_LOGOS_SELF_TYPE_NORMAL SXMPlaybackRestrictions* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SXMPlaybackRestrictions$navigationType(_LOGOS_SELF_TYPE_NORMAL SXMPlaybackRestrictions* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$SXMPlaybackRestrictions$navigationType(_LOGOS_SELF_TYPE_NORMAL SXMPlaybackRestrictions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SXMPlaybackRestrictions = objc_getClass("SXMPlaybackRestrictions"); { MSHookMessageEx(_logos_class$_ungrouped$SXMPlaybackRestrictions, @selector(navigationType), (IMP)&_logos_method$_ungrouped$SXMPlaybackRestrictions$navigationType, (IMP*)&_logos_orig$_ungrouped$SXMPlaybackRestrictions$navigationType);}} }
#line 9 "Tweak.xm"
