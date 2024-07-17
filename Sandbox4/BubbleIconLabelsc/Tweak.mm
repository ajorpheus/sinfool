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

@class SBMutableIconLabelImageParameters; 
static void (*_logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setFocusHighlightColor$)(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBMutableIconLabelImageParameters$setFocusHighlightColor$(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBMutableIconLabelImageParameters$setTextColor$(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBMutableIconLabelImageParameters$setFocusHighlightColor$(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:63/255.0];
    _logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setFocusHighlightColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBMutableIconLabelImageParameters$setTextColor$(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setTextColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBMutableIconLabelImageParameters = objc_getClass("SBMutableIconLabelImageParameters"); { MSHookMessageEx(_logos_class$_ungrouped$SBMutableIconLabelImageParameters, @selector(setFocusHighlightColor:), (IMP)&_logos_method$_ungrouped$SBMutableIconLabelImageParameters$setFocusHighlightColor$, (IMP*)&_logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setFocusHighlightColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBMutableIconLabelImageParameters, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$SBMutableIconLabelImageParameters$setTextColor$, (IMP*)&_logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setTextColor$);}} }
#line 19 "Tweak.xm"
