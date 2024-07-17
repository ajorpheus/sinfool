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

@class UIDevice; @class UIKBRenderFactory; @class UIKBTree; @class UITextInputTraits; @class UIKBTextStyle; @class UIKBRenderTraits; @class UIKBRenderConfig; 
static bool (*_logos_orig$_ungrouped$UIKBRenderFactory$boldTextEnabled)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UITextInputTraits$suppressReturnKeyStyling)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITextInputTraits$suppressReturnKeyStyling(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIKBRenderTraits$setBlendForm$)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderTraits* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UIKBRenderTraits$setBlendForm$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderTraits* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$UIKBTree$setVisualStyle$)(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$UIKBTree$setVisualStyle$(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST, SEL, int); static void (*_logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$)(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UIKBRenderConfig$setKeycapOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$UIKBRenderConfig$setLightKeyboard$)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UIKBRenderConfig$setLightKeyboard$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, bool); static long long (*_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$UITextInputTraits$suppressReturnKeyStyling(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$UIKBRenderTraits$setBlendForm$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UIKBRenderTraits$setBlendForm$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIKBTree$setVisualStyle$(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    arg1 = 5;
    _logos_orig$_ungrouped$UIKBTree$setVisualStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0.7;
    _logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIKBRenderConfig$setKeycapOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0.5;
    _logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIKBRenderConfig$setLightKeyboard$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$UIKBRenderConfig$setLightKeyboard$(self, _cmd, arg1);
}



static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 10;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKBRenderFactory = objc_getClass("UIKBRenderFactory"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderFactory, @selector(boldTextEnabled), (IMP)&_logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled, (IMP*)&_logos_orig$_ungrouped$UIKBRenderFactory$boldTextEnabled);}Class _logos_class$_ungrouped$UITextInputTraits = objc_getClass("UITextInputTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(suppressReturnKeyStyling), (IMP)&_logos_method$_ungrouped$UITextInputTraits$suppressReturnKeyStyling, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$suppressReturnKeyStyling);}Class _logos_class$_ungrouped$UIKBRenderTraits = objc_getClass("UIKBRenderTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderTraits, @selector(setBlendForm:), (IMP)&_logos_method$_ungrouped$UIKBRenderTraits$setBlendForm$, (IMP*)&_logos_orig$_ungrouped$UIKBRenderTraits$setBlendForm$);}Class _logos_class$_ungrouped$UIKBTree = objc_getClass("UIKBTree"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBTree, @selector(setVisualStyle:), (IMP)&_logos_method$_ungrouped$UIKBTree$setVisualStyle$, (IMP*)&_logos_orig$_ungrouped$UIKBTree$setVisualStyle$);}Class _logos_class$_ungrouped$UIKBTextStyle = objc_getClass("UIKBTextStyle"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBTextStyle, @selector(setTextOpacity:), (IMP)&_logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$, (IMP*)&_logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$);}Class _logos_class$_ungrouped$UIKBRenderConfig = objc_getClass("UIKBRenderConfig"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(setKeycapOpacity:), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$setKeycapOpacity$, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(setLightKeyboard:), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$setLightKeyboard$, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$setLightKeyboard$);}Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); { MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(_keyboardGraphicsQuality), (IMP)&_logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality, (IMP*)&_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality);}} }
#line 59 "Tweak.xm"
