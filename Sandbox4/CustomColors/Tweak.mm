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

@class _UITextFieldRoundedRectBackgroundViewNeue; @class UIButton; @class UIMorphingLabel; @class UILabel; @class UITextInputTraits; 
static void (*_logos_orig$_ungrouped$UIButton$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL UIButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL UIButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$)(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$)(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITextInputTraits$setSelectionBarColor$)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITextInputTraits$setSelectionBarColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UIMorphingLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UIMorphingLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIMorphingLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UIMorphingLabel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UILabel$setHighlightedTextColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UILabel$setHighlightedTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL UIButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UIButton$setTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITextInputTraits$setSelectionBarColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITextInputTraits$setSelectionBarColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIMorphingLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UIMorphingLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UIMorphingLabel$setTextColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UILabel$setHighlightedTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UILabel$setHighlightedTextColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIButton = objc_getClass("UIButton"); { MSHookMessageEx(_logos_class$_ungrouped$UIButton, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$UIButton$setTintColor$, (IMP*)&_logos_orig$_ungrouped$UIButton$setTintColor$);}Class _logos_class$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue = objc_getClass("_UITextFieldRoundedRectBackgroundViewNeue"); { MSHookMessageEx(_logos_class$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue, @selector(setFillColor:), (IMP)&_logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$, (IMP*)&_logos_orig$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue, @selector(setStrokeColor:), (IMP)&_logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$, (IMP*)&_logos_orig$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$);}Class _logos_class$_ungrouped$UITextInputTraits = objc_getClass("UITextInputTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(setInsertionPointColor:), (IMP)&_logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(setSelectionBarColor:), (IMP)&_logos_method$_ungrouped$UITextInputTraits$setSelectionBarColor$, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$setSelectionBarColor$);}Class _logos_class$_ungrouped$UIMorphingLabel = objc_getClass("UIMorphingLabel"); { MSHookMessageEx(_logos_class$_ungrouped$UIMorphingLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$UIMorphingLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$UIMorphingLabel$setTextColor$);}Class _logos_class$_ungrouped$UILabel = objc_getClass("UILabel"); { MSHookMessageEx(_logos_class$_ungrouped$UILabel, @selector(setHighlightedTextColor:), (IMP)&_logos_method$_ungrouped$UILabel$setHighlightedTextColor$, (IMP*)&_logos_orig$_ungrouped$UILabel$setHighlightedTextColor$);}} }
#line 59 "Tweak.xm"
