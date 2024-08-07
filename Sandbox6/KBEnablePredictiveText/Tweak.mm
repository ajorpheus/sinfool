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

@class UIKeyboardImpl; @class UIKeyboardPredictionView; 
static bool (*_logos_orig$_ungrouped$UIKeyboardPredictionView$enabled)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardPredictionView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKeyboardPredictionView$enabled(_LOGOS_SELF_TYPE_NORMAL UIKeyboardPredictionView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UIKeyboardImpl$showsCandidateBar)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKeyboardImpl$showsCandidateBar(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UIKeyboardPredictionView$enabled(_LOGOS_SELF_TYPE_NORMAL UIKeyboardPredictionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$UIKeyboardImpl$showsCandidateBar(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKeyboardPredictionView = objc_getClass("UIKeyboardPredictionView"); { MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardPredictionView, @selector(enabled), (IMP)&_logos_method$_ungrouped$UIKeyboardPredictionView$enabled, (IMP*)&_logos_orig$_ungrouped$UIKeyboardPredictionView$enabled);}Class _logos_class$_ungrouped$UIKeyboardImpl = objc_getClass("UIKeyboardImpl"); { MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardImpl, @selector(showsCandidateBar), (IMP)&_logos_method$_ungrouped$UIKeyboardImpl$showsCandidateBar, (IMP*)&_logos_orig$_ungrouped$UIKeyboardImpl$showsCandidateBar);}} }
#line 15 "Tweak.xm"
