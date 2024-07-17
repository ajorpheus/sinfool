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

@class UITextInputTraits; @class UIKBRenderGeometry; @class UIKBRenderConfig; @class UIKBRenderFactory; @class UIKBTree; @class UIMorphingLabel; @class UIKBRenderTraits; @class UIKBTextStyle; @class UIDevice; 
static void (*_logos_orig$_ungrouped$UIMorphingLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UIMorphingLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIMorphingLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UIMorphingLabel* _LOGOS_SELF_CONST, SEL, id); static long long (*_logos_orig$_ungrouped$UIKBRenderConfig$backdropStyle)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIKBRenderConfig$backdropStyle(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UIKBRenderConfig$lightKeyboard)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKBRenderConfig$lightKeyboard(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UIKBRenderConfig$setKeycapOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$UIKBRenderConfig$whiteText)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKBRenderConfig$whiteText(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$UIKBTree$visualStyle)(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UIKBTree$visualStyle(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderGeometry* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderGeometry* _LOGOS_SELF_CONST, SEL, double); static int (*_logos_orig$_ungrouped$UIKBRenderGeometry$popupBias)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderGeometry* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UIKBRenderGeometry$popupBias(_LOGOS_SELF_TYPE_NORMAL UIKBRenderGeometry* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIKBRenderTraits$blendForm)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderTraits* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIKBRenderTraits$blendForm(_LOGOS_SELF_TYPE_NORMAL UIKBRenderTraits* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$)(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$UIKBRenderFactory$boldTextEnabled)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UITextInputTraits$suppressReturnKeyStyling)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITextInputTraits$suppressReturnKeyStyling(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIMorphingLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UIMorphingLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:113/255.0];
    _logos_orig$_ungrouped$UIMorphingLabel$setTextColor$(self, _cmd, arg1);
}



static long long _logos_method$_ungrouped$UIKBRenderConfig$backdropStyle(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return -1;
}



static bool _logos_method$_ungrouped$UIKBRenderConfig$lightKeyboard(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static int _logos_method$_ungrouped$UIKBTree$visualStyle(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 5;
}



static void _logos_method$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderGeometry* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 16.1;
    _logos_orig$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIKBRenderConfig$setKeycapOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.7;
    _logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$(self, _cmd, arg1);
}



static long long _logos_method$_ungrouped$UIKBRenderTraits$blendForm(_LOGOS_SELF_TYPE_NORMAL UIKBRenderTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.7;
    _logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$UIKBRenderConfig$whiteText(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 10;
}



static int _logos_method$_ungrouped$UIKBRenderGeometry$popupBias(_LOGOS_SELF_TYPE_NORMAL UIKBRenderGeometry* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UITextInputTraits$suppressReturnKeyStyling(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIMorphingLabel = objc_getClass("UIMorphingLabel"); { MSHookMessageEx(_logos_class$_ungrouped$UIMorphingLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$UIMorphingLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$UIMorphingLabel$setTextColor$);}Class _logos_class$_ungrouped$UIKBRenderConfig = objc_getClass("UIKBRenderConfig"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(backdropStyle), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$backdropStyle, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$backdropStyle);}{ MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(lightKeyboard), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$lightKeyboard, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$lightKeyboard);}{ MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(setKeycapOpacity:), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$setKeycapOpacity$, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(whiteText), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$whiteText, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$whiteText);}Class _logos_class$_ungrouped$UIKBTree = objc_getClass("UIKBTree"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBTree, @selector(visualStyle), (IMP)&_logos_method$_ungrouped$UIKBTree$visualStyle, (IMP*)&_logos_orig$_ungrouped$UIKBTree$visualStyle);}Class _logos_class$_ungrouped$UIKBRenderGeometry = objc_getClass("UIKBRenderGeometry"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderGeometry, @selector(setRoundRectRadius:), (IMP)&_logos_method$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$, (IMP*)&_logos_orig$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderGeometry, @selector(popupBias), (IMP)&_logos_method$_ungrouped$UIKBRenderGeometry$popupBias, (IMP*)&_logos_orig$_ungrouped$UIKBRenderGeometry$popupBias);}Class _logos_class$_ungrouped$UIKBRenderTraits = objc_getClass("UIKBRenderTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderTraits, @selector(blendForm), (IMP)&_logos_method$_ungrouped$UIKBRenderTraits$blendForm, (IMP*)&_logos_orig$_ungrouped$UIKBRenderTraits$blendForm);}Class _logos_class$_ungrouped$UIKBTextStyle = objc_getClass("UIKBTextStyle"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBTextStyle, @selector(setTextOpacity:), (IMP)&_logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$, (IMP*)&_logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$);}Class _logos_class$_ungrouped$UIKBRenderFactory = objc_getClass("UIKBRenderFactory"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderFactory, @selector(boldTextEnabled), (IMP)&_logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled, (IMP*)&_logos_orig$_ungrouped$UIKBRenderFactory$boldTextEnabled);}Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); { MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(_keyboardGraphicsQuality), (IMP)&_logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality, (IMP*)&_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality);}Class _logos_class$_ungrouped$UITextInputTraits = objc_getClass("UITextInputTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(suppressReturnKeyStyling), (IMP)&_logos_method$_ungrouped$UITextInputTraits$suppressReturnKeyStyling, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$suppressReturnKeyStyling);}} }
#line 98 "Tweak.xm"
