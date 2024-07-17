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

@class CAMModeDial; @class CUShutterButton; @class CAMBottomBar; @class CAMTopBar; @class CAMViewfinderViewController; 
static void (*_logos_orig$_ungrouped$CUShutterButton$setMode$animated$)(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST, SEL, long long, bool); static void _logos_method$_ungrouped$CUShutterButton$setMode$animated$(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST, SEL, long long, bool); static void (*_logos_orig$_ungrouped$CAMModeDial$setSelectedMode$animated$)(_LOGOS_SELF_TYPE_NORMAL CAMModeDial* _LOGOS_SELF_CONST, SEL, long long, bool); static void _logos_method$_ungrouped$CAMModeDial$setSelectedMode$animated$(_LOGOS_SELF_TYPE_NORMAL CAMModeDial* _LOGOS_SELF_CONST, SEL, long long, bool); static long long (*_logos_orig$_ungrouped$CAMTopBar$backgroundStyle)(_LOGOS_SELF_TYPE_NORMAL CAMTopBar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CAMTopBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMTopBar* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$CAMBottomBar$backgroundStyle)(_LOGOS_SELF_TYPE_NORMAL CAMBottomBar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CAMBottomBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMBottomBar* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); 

#line 3 "Tweak.xm"

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



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CUShutterButton = objc_getClass("CUShutterButton"); { MSHookMessageEx(_logos_class$_ungrouped$CUShutterButton, @selector(setMode:animated:), (IMP)&_logos_method$_ungrouped$CUShutterButton$setMode$animated$, (IMP*)&_logos_orig$_ungrouped$CUShutterButton$setMode$animated$);}Class _logos_class$_ungrouped$CAMModeDial = objc_getClass("CAMModeDial"); { MSHookMessageEx(_logos_class$_ungrouped$CAMModeDial, @selector(setSelectedMode:animated:), (IMP)&_logos_method$_ungrouped$CAMModeDial$setSelectedMode$animated$, (IMP*)&_logos_orig$_ungrouped$CAMModeDial$setSelectedMode$animated$);}Class _logos_class$_ungrouped$CAMTopBar = objc_getClass("CAMTopBar"); { MSHookMessageEx(_logos_class$_ungrouped$CAMTopBar, @selector(backgroundStyle), (IMP)&_logos_method$_ungrouped$CAMTopBar$backgroundStyle, (IMP*)&_logos_orig$_ungrouped$CAMTopBar$backgroundStyle);}Class _logos_class$_ungrouped$CAMBottomBar = objc_getClass("CAMBottomBar"); { MSHookMessageEx(_logos_class$_ungrouped$CAMBottomBar, @selector(backgroundStyle), (IMP)&_logos_method$_ungrouped$CAMBottomBar$backgroundStyle, (IMP*)&_logos_orig$_ungrouped$CAMBottomBar$backgroundStyle);}Class _logos_class$_ungrouped$CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideElapsedTimeViewForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideStillDuringVideoButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFramerateIndicatorForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldRotateTopBarForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldRotateTopBarForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFlashButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideHDRButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideIrisButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideTimerButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFlipButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideImageWellForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFilterButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$);}} }
#line 110 "Tweak.xm"
