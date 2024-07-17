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

@class UIKeyboardImpl; @class UITextInputTraits; 
static void (*_logos_orig$_ungrouped$UIKeyboardImpl$setCaretVisible$)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$UIKeyboardImpl$setCaretVisible$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$UIKeyboardImpl$setCaretBlinks$)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$UIKeyboardImpl$setCaretBlinks$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITextInputTraits$setSelectionBarColor$)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITextInputTraits$setSelectionBarColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITextInputTraits$_setColorsToMatchTintColor$)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITextInputTraits$_setColorsToMatchTintColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIKeyboardImpl$setCaretVisible$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UIKeyboardImpl$setCaretVisible$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIKeyboardImpl$setCaretBlinks$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UIKeyboardImpl$setCaretBlinks$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITextInputTraits$setSelectionBarColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITextInputTraits$setSelectionBarColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITextInputTraits$_setColorsToMatchTintColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITextInputTraits$_setColorsToMatchTintColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKeyboardImpl = objc_getClass("UIKeyboardImpl"); { MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardImpl, @selector(setCaretVisible:), (IMP)&_logos_method$_ungrouped$UIKeyboardImpl$setCaretVisible$, (IMP*)&_logos_orig$_ungrouped$UIKeyboardImpl$setCaretVisible$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardImpl, @selector(setCaretBlinks:), (IMP)&_logos_method$_ungrouped$UIKeyboardImpl$setCaretBlinks$, (IMP*)&_logos_orig$_ungrouped$UIKeyboardImpl$setCaretBlinks$);}Class _logos_class$_ungrouped$UITextInputTraits = objc_getClass("UITextInputTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(setInsertionPointColor:), (IMP)&_logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(setSelectionBarColor:), (IMP)&_logos_method$_ungrouped$UITextInputTraits$setSelectionBarColor$, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$setSelectionBarColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(_setColorsToMatchTintColor:), (IMP)&_logos_method$_ungrouped$UITextInputTraits$_setColorsToMatchTintColor$, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$_setColorsToMatchTintColor$);}} }
#line 43 "Tweak.xm"
