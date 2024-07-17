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

@class SBIcon; @class SBClockApplicationIconImageView; 
static id (*_logos_orig$_ungrouped$SBIcon$getIconImage$)(_LOGOS_SELF_TYPE_NORMAL SBIcon* _LOGOS_SELF_CONST, SEL, int); static id _logos_method$_ungrouped$SBIcon$getIconImage$(_LOGOS_SELF_TYPE_NORMAL SBIcon* _LOGOS_SELF_CONST, SEL, int); static void (*_logos_orig$_ungrouped$SBClockApplicationIconImageView$setIcon$location$animated$)(_LOGOS_SELF_TYPE_NORMAL SBClockApplicationIconImageView* _LOGOS_SELF_CONST, SEL, id, int, bool); static void _logos_method$_ungrouped$SBClockApplicationIconImageView$setIcon$location$animated$(_LOGOS_SELF_TYPE_NORMAL SBClockApplicationIconImageView* _LOGOS_SELF_CONST, SEL, id, int, bool); static void (*_logos_orig$_ungrouped$SBClockApplicationIconImageView$_setAnimating$)(_LOGOS_SELF_TYPE_NORMAL SBClockApplicationIconImageView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBClockApplicationIconImageView$_setAnimating$(_LOGOS_SELF_TYPE_NORMAL SBClockApplicationIconImageView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$SBIcon$getIconImage$(_LOGOS_SELF_TYPE_NORMAL SBIcon* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    return NULL;
}



static void _logos_method$_ungrouped$SBClockApplicationIconImageView$setIcon$location$animated$(_LOGOS_SELF_TYPE_NORMAL SBClockApplicationIconImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, int arg2, bool arg3) {
    arg1 = NULL;
    _logos_orig$_ungrouped$SBClockApplicationIconImageView$setIcon$location$animated$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$SBClockApplicationIconImageView$_setAnimating$(_LOGOS_SELF_TYPE_NORMAL SBClockApplicationIconImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBClockApplicationIconImageView$_setAnimating$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIcon = objc_getClass("SBIcon"); { MSHookMessageEx(_logos_class$_ungrouped$SBIcon, @selector(getIconImage:), (IMP)&_logos_method$_ungrouped$SBIcon$getIconImage$, (IMP*)&_logos_orig$_ungrouped$SBIcon$getIconImage$);}Class _logos_class$_ungrouped$SBClockApplicationIconImageView = objc_getClass("SBClockApplicationIconImageView"); { MSHookMessageEx(_logos_class$_ungrouped$SBClockApplicationIconImageView, @selector(setIcon:location:animated:), (IMP)&_logos_method$_ungrouped$SBClockApplicationIconImageView$setIcon$location$animated$, (IMP*)&_logos_orig$_ungrouped$SBClockApplicationIconImageView$setIcon$location$animated$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBClockApplicationIconImageView, @selector(_setAnimating:), (IMP)&_logos_method$_ungrouped$SBClockApplicationIconImageView$_setAnimating$, (IMP*)&_logos_orig$_ungrouped$SBClockApplicationIconImageView$_setAnimating$);}} }
#line 23 "Tweak.xm"
