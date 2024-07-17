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

@class SBMainStatusBarStateProvider; 
static void (*_logos_orig$_ungrouped$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$)(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST, SEL, bool, bool, double); static void _logos_method$_ungrouped$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST, SEL, bool, bool, double); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2, double arg3) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$(self, _cmd, arg1, arg2, arg3);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBMainStatusBarStateProvider = objc_getClass("SBMainStatusBarStateProvider"); { MSHookMessageEx(_logos_class$_ungrouped$SBMainStatusBarStateProvider, @selector(enableTime:crossfade:crossfadeDuration:), (IMP)&_logos_method$_ungrouped$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$, (IMP*)&_logos_orig$_ungrouped$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$);}} }
#line 10 "Tweak.xm"
