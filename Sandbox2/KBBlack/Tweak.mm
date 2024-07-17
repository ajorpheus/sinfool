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

@class UIKBRenderConfig; @class UIDevice; 
static void (*_logos_orig$_ungrouped$UIKBRenderConfig$setLightKeyboard$)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UIKBRenderConfig$setLightKeyboard$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL, bool); static long long (*_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIKBRenderConfig$setLightKeyboard$(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$UIKBRenderConfig$setLightKeyboard$(self, _cmd, arg1);
}



static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 10;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKBRenderConfig = objc_getClass("UIKBRenderConfig"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(setLightKeyboard:), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$setLightKeyboard$, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$setLightKeyboard$);}Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); { MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(_keyboardGraphicsQuality), (IMP)&_logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality, (IMP*)&_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality);}} }
#line 16 "Tweak.xm"
