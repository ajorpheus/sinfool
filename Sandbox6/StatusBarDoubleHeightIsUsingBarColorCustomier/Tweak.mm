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

@class UIStatusBarBackgroundView; @class UIStatusBarNewUIDoubleHeightStyleAttributes; 
static void (*_logos_orig$_ungrouped$UIStatusBarBackgroundView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBackgroundView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIStatusBarBackgroundView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBackgroundView* _LOGOS_SELF_CONST, SEL, id); static UIStatusBarNewUIDoubleHeightStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$)(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIDoubleHeightStyleAttributes*, SEL, id, id, id, bool) _LOGOS_RETURN_RETAINED; static UIStatusBarNewUIDoubleHeightStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIDoubleHeightStyleAttributes*, SEL, id, id, id, bool) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIStatusBarBackgroundView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:63/255.0];
    _logos_orig$_ungrouped$UIStatusBarBackgroundView$setBackgroundColor$(self, _cmd, arg1);
}



static UIStatusBarNewUIDoubleHeightStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIDoubleHeightStyleAttributes* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, bool arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(self, _cmd, arg1, arg2, arg3, arg4);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarBackgroundView = objc_getClass("UIStatusBarBackgroundView"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarBackgroundView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UIStatusBarBackgroundView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarBackgroundView$setBackgroundColor$);}Class _logos_class$_ungrouped$UIStatusBarNewUIDoubleHeightStyleAttributes = objc_getClass("UIStatusBarNewUIDoubleHeightStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIDoubleHeightStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:hasBusyBackground:), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$);}} }
#line 19 "Tweak.xm"
