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

@class CAMTopBar; @class CUShutterButton; @class CAMCaptureConfiguration; @class CAMModeDial; @class CAMViewfinderViewController; @class CAMUserPreferences; @class CAMBottomBar; 
static long long (*_logos_orig$_ungrouped$CAMCaptureConfiguration$mode)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureConfiguration* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CAMCaptureConfiguration$mode(_LOGOS_SELF_TYPE_NORMAL CAMCaptureConfiguration* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration)(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CUShutterButton$setMode$animated$)(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST, SEL, long long, bool); static void _logos_method$_ungrouped$CUShutterButton$setMode$animated$(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST, SEL, long long, bool); static void (*_logos_orig$_ungrouped$CAMModeDial$setSelectedMode$animated$)(_LOGOS_SELF_TYPE_NORMAL CAMModeDial* _LOGOS_SELF_CONST, SEL, long long, bool); static void _logos_method$_ungrouped$CAMModeDial$setSelectedMode$animated$(_LOGOS_SELF_TYPE_NORMAL CAMModeDial* _LOGOS_SELF_CONST, SEL, long long, bool); static long long (*_logos_orig$_ungrouped$CAMTopBar$backgroundStyle)(_LOGOS_SELF_TYPE_NORMAL CAMTopBar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CAMTopBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMTopBar* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$CAMBottomBar$backgroundStyle)(_LOGOS_SELF_TYPE_NORMAL CAMBottomBar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CAMBottomBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMBottomBar* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForGraphConfiguration$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$CAMCaptureConfiguration$mode(_LOGOS_SELF_TYPE_NORMAL CAMCaptureConfiguration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$CUShutterButton$setMode$animated$(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, bool arg2) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$CUShutterButton$setMode$animated$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$CAMModeDial$setSelectedMode$animated$(_LOGOS_SELF_TYPE_NORMAL CAMModeDial* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, bool arg2) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$CAMModeDial$setSelectedMode$animated$(self, _cmd, arg1, arg2);
}



static long long _logos_method$_ungrouped$CAMTopBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMTopBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 2;
}



static long long _logos_method$_ungrouped$CAMBottomBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMBottomBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 2;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForGraphConfiguration$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMCaptureConfiguration = objc_getClass("CAMCaptureConfiguration"); { MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureConfiguration, @selector(mode), (IMP)&_logos_method$_ungrouped$CAMCaptureConfiguration$mode, (IMP*)&_logos_orig$_ungrouped$CAMCaptureConfiguration$mode);}Class _logos_class$_ungrouped$CAMUserPreferences = objc_getClass("CAMUserPreferences"); { MSHookMessageEx(_logos_class$_ungrouped$CAMUserPreferences, @selector(shouldResetCaptureConfiguration), (IMP)&_logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration, (IMP*)&_logos_orig$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration);}Class _logos_class$_ungrouped$CUShutterButton = objc_getClass("CUShutterButton"); { MSHookMessageEx(_logos_class$_ungrouped$CUShutterButton, @selector(setMode:animated:), (IMP)&_logos_method$_ungrouped$CUShutterButton$setMode$animated$, (IMP*)&_logos_orig$_ungrouped$CUShutterButton$setMode$animated$);}Class _logos_class$_ungrouped$CAMModeDial = objc_getClass("CAMModeDial"); { MSHookMessageEx(_logos_class$_ungrouped$CAMModeDial, @selector(setSelectedMode:animated:), (IMP)&_logos_method$_ungrouped$CAMModeDial$setSelectedMode$animated$, (IMP*)&_logos_orig$_ungrouped$CAMModeDial$setSelectedMode$animated$);}Class _logos_class$_ungrouped$CAMTopBar = objc_getClass("CAMTopBar"); { MSHookMessageEx(_logos_class$_ungrouped$CAMTopBar, @selector(backgroundStyle), (IMP)&_logos_method$_ungrouped$CAMTopBar$backgroundStyle, (IMP*)&_logos_orig$_ungrouped$CAMTopBar$backgroundStyle);}Class _logos_class$_ungrouped$CAMBottomBar = objc_getClass("CAMBottomBar"); { MSHookMessageEx(_logos_class$_ungrouped$CAMBottomBar, @selector(backgroundStyle), (IMP)&_logos_method$_ungrouped$CAMBottomBar$backgroundStyle, (IMP*)&_logos_orig$_ungrouped$CAMBottomBar$backgroundStyle);}Class _logos_class$_ungrouped$CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideElapsedTimeViewForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideStillDuringVideoButtonForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFramerateIndicatorForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldRotateTopBarForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFlashButtonForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideHDRButtonForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideIrisButtonForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideTimerButtonForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFlipButtonForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideImageWellForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForGraphConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFilterButtonForGraphConfiguration:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForGraphConfiguration$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForGraphConfiguration$);}} }
#line 124 "Tweak.xm"
