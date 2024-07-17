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

@class SBHighlightView; @class SBDockView; 
static id (*_logos_orig$_ungrouped$SBDockView$_newBackgroundImage)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBDockView$_newBackgroundImage(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, float); static SBHighlightView* (*_logos_orig$_ungrouped$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$)(_LOGOS_SELF_TYPE_INIT SBHighlightView*, SEL, CGRect, float, float) _LOGOS_RETURN_RETAINED; static SBHighlightView* _logos_method$_ungrouped$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$(_LOGOS_SELF_TYPE_INIT SBHighlightView*, SEL, CGRect, float, float) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$SBDockView$_newBackgroundImage(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static void _logos_method$_ungrouped$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$(self, _cmd, arg1);
}



static SBHighlightView* _logos_method$_ungrouped$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$(_LOGOS_SELF_TYPE_INIT SBHighlightView* __unused self, SEL __unused _cmd, CGRect arg1, float arg2, float arg3) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDockView = objc_getClass("SBDockView"); { MSHookMessageEx(_logos_class$_ungrouped$SBDockView, @selector(_newBackgroundImage), (IMP)&_logos_method$_ungrouped$SBDockView$_newBackgroundImage, (IMP*)&_logos_orig$_ungrouped$SBDockView$_newBackgroundImage);}{ MSHookMessageEx(_logos_class$_ungrouped$SBDockView, @selector(setBackgroundAlpha:), (IMP)&_logos_method$_ungrouped$SBDockView$setBackgroundAlpha$, (IMP*)&_logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$);}Class _logos_class$_ungrouped$SBHighlightView = objc_getClass("SBHighlightView"); { MSHookMessageEx(_logos_class$_ungrouped$SBHighlightView, @selector(initWithFrame:highlightAlpha:highlightHeight:), (IMP)&_logos_method$_ungrouped$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$, (IMP*)&_logos_orig$_ungrouped$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$);}} }
#line 22 "Tweak.xm"
