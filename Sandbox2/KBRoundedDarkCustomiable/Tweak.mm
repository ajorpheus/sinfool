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

@class UIKBRenderConfig; @class UIKBTree; @class UIDevice; @class UIKBTextStyle; @class UIKBRenderGeometry; @class UIKBRenderFactory; 
static bool (*_logos_orig$_ungrouped$UIKBRenderConfig$lightKeyboard)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKBRenderConfig$lightKeyboard(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UIKBRenderConfig$setKeycapOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, double); static int (*_logos_orig$_ungrouped$UIKBTree$visualStyle)(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UIKBTree$visualStyle(_LOGOS_SELF_TYPE_NORMAL UIKBTree* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderGeometry* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderGeometry* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$)(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$UIKBRenderFactory$boldTextEnabled)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

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
    
    arg1 = 0;
    _logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$(_LOGOS_SELF_TYPE_NORMAL UIKBTextStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.7;
    _logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled(_LOGOS_SELF_TYPE_NORMAL UIKBRenderFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 10;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKBRenderConfig = objc_getClass("UIKBRenderConfig"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(lightKeyboard), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$lightKeyboard, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$lightKeyboard);}{ MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(setKeycapOpacity:), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$setKeycapOpacity$, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$setKeycapOpacity$);}Class _logos_class$_ungrouped$UIKBTree = objc_getClass("UIKBTree"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBTree, @selector(visualStyle), (IMP)&_logos_method$_ungrouped$UIKBTree$visualStyle, (IMP*)&_logos_orig$_ungrouped$UIKBTree$visualStyle);}Class _logos_class$_ungrouped$UIKBRenderGeometry = objc_getClass("UIKBRenderGeometry"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderGeometry, @selector(setRoundRectRadius:), (IMP)&_logos_method$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$, (IMP*)&_logos_orig$_ungrouped$UIKBRenderGeometry$setRoundRectRadius$);}Class _logos_class$_ungrouped$UIKBTextStyle = objc_getClass("UIKBTextStyle"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBTextStyle, @selector(setTextOpacity:), (IMP)&_logos_method$_ungrouped$UIKBTextStyle$setTextOpacity$, (IMP*)&_logos_orig$_ungrouped$UIKBTextStyle$setTextOpacity$);}Class _logos_class$_ungrouped$UIKBRenderFactory = objc_getClass("UIKBRenderFactory"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderFactory, @selector(boldTextEnabled), (IMP)&_logos_method$_ungrouped$UIKBRenderFactory$boldTextEnabled, (IMP*)&_logos_orig$_ungrouped$UIKBRenderFactory$boldTextEnabled);}Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); { MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(_keyboardGraphicsQuality), (IMP)&_logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality, (IMP*)&_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality);}} }
#line 55 "Tweak.xm"
