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

@class CalculatorPatchedSwiftClassNameCalculatorKeypadLabel; @class CalculatorPatchedSwiftClassNamePrimaryDisplayView; 
static void (*_logos_orig$_ungrouped$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:23/255.0 green:23/255.0 blue:23/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:37/255.0 green:185/255.0 blue:233/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalCtor_4028b031(int __unused argc, char __unused **argv, char __unused **envp) {

    {Class _logos_class$_ungrouped$CalculatorPatchedSwiftClassNamePrimaryDisplayView = objc_getClass("Calculator.PrimaryDisplayView"); { MSHookMessageEx(_logos_class$_ungrouped$CalculatorPatchedSwiftClassNamePrimaryDisplayView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$);}Class _logos_class$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel = objc_getClass("Calculator.CalculatorKeypadLabel"); { MSHookMessageEx(_logos_class$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$);}}

}
