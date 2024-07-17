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

@class TPRevealingRingView; 
static void (*_logos_orig$_ungrouped$TPRevealingRingView$setCornerRadius$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$TPRevealingRingView$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, float); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, float); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$TPRevealingRingView$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    
    arg1 = 23;
    _logos_orig$_ungrouped$TPRevealingRingView$setCornerRadius$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    
    arg1 = 3;
    _logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TPRevealingRingView = objc_getClass("TPRevealingRingView"); { MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setCornerRadius:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setCornerRadius$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setCornerRadius$);}{ MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setDefaultRingStrokeWidth:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$);}} }
#line 19 "Tweak.xm"
