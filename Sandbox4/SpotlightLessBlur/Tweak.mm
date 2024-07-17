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

@class SBSearchBackdropView; 
static void (*_logos_orig$_ungrouped$SBSearchBackdropView$setTransitionProgress$)(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBSearchBackdropView$setTransitionProgress$(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$SBSearchBackdropView$useHighQualityGraphics)(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBSearchBackdropView$useHighQualityGraphics(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBSearchBackdropView$setTransitionProgress$(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.975;
    _logos_orig$_ungrouped$SBSearchBackdropView$setTransitionProgress$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBSearchBackdropView$useHighQualityGraphics(_LOGOS_SELF_TYPE_NORMAL SBSearchBackdropView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBSearchBackdropView = objc_getClass("SBSearchBackdropView"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchBackdropView, @selector(setTransitionProgress:), (IMP)&_logos_method$_ungrouped$SBSearchBackdropView$setTransitionProgress$, (IMP*)&_logos_orig$_ungrouped$SBSearchBackdropView$setTransitionProgress$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBSearchBackdropView, @selector(useHighQualityGraphics), (IMP)&_logos_method$_ungrouped$SBSearchBackdropView$useHighQualityGraphics, (IMP*)&_logos_orig$_ungrouped$SBSearchBackdropView$useHighQualityGraphics);}} }
#line 17 "Tweak.xm"
