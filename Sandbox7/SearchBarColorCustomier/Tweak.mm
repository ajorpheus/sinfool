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

@class UISearchBarBackground; @class _UICascadingTextStorage; @class _UISearchBarSearchFieldBackgroundView; @class UISearchBarTextFieldLabel; 
static void (*_logos_orig$_ungrouped$UISearchBarBackground$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UISearchBarBackground$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, long long, double); static id _logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, long long, double); static void (*_logos_orig$_ungrouped$_UISearchBarSearchFieldBackgroundView$setFillColor$)(_LOGOS_SELF_TYPE_NORMAL _UISearchBarSearchFieldBackgroundView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UISearchBarSearchFieldBackgroundView$setFillColor$(_LOGOS_SELF_TYPE_NORMAL _UISearchBarSearchFieldBackgroundView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UISearchBarTextFieldLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UISearchBarTextFieldLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UISearchBarTextFieldLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UISearchBarTextFieldLabel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UICascadingTextStorage$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL _UICascadingTextStorage* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UICascadingTextStorage$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UICascadingTextStorage* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UISearchBarBackground$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:29/255.0 green:29/255.0 blue:29/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UISearchBarBackground$setBackgroundColor$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, double arg2) {
    
    arg2 = 0;
    return _logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$_UISearchBarSearchFieldBackgroundView$setFillColor$(_LOGOS_SELF_TYPE_NORMAL _UISearchBarSearchFieldBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:18/255.0 green:18/255.0 blue:18/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UISearchBarSearchFieldBackgroundView$setFillColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UISearchBarTextFieldLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UISearchBarTextFieldLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:142/255.0 green:142/255.0 blue:147/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UISearchBarTextFieldLabel$setTextColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UICascadingTextStorage$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UICascadingTextStorage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UICascadingTextStorage$setTextColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UISearchBarBackground = objc_getClass("UISearchBarBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UISearchBarBackground, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UISearchBarBackground$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UISearchBarBackground$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)&_logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP*)&_logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);}Class _logos_class$_ungrouped$_UISearchBarSearchFieldBackgroundView = objc_getClass("_UISearchBarSearchFieldBackgroundView"); { MSHookMessageEx(_logos_class$_ungrouped$_UISearchBarSearchFieldBackgroundView, @selector(setFillColor:), (IMP)&_logos_method$_ungrouped$_UISearchBarSearchFieldBackgroundView$setFillColor$, (IMP*)&_logos_orig$_ungrouped$_UISearchBarSearchFieldBackgroundView$setFillColor$);}Class _logos_class$_ungrouped$UISearchBarTextFieldLabel = objc_getClass("UISearchBarTextFieldLabel"); { MSHookMessageEx(_logos_class$_ungrouped$UISearchBarTextFieldLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$UISearchBarTextFieldLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$UISearchBarTextFieldLabel$setTextColor$);}Class _logos_class$_ungrouped$_UICascadingTextStorage = objc_getClass("_UICascadingTextStorage"); { MSHookMessageEx(_logos_class$_ungrouped$_UICascadingTextStorage, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$_UICascadingTextStorage$setTextColor$, (IMP*)&_logos_orig$_ungrouped$_UICascadingTextStorage$setTextColor$);}} }
#line 43 "Tweak.xm"
