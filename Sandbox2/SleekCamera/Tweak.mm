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

@class CAMFocusIndicatorRectView; @class CAMModeDial; @class CAMUserPreferences; @class CAMZoomSlider; @class CAMFlashButton; @class CAMTopBar; @class CAMViewfinderViewController; @class CUShutterButton; @class CAMBottomBar; @class CAMPreviewViewController; 
static bool (*_logos_orig$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration)(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$CAMViewfinderViewController$_aspectRatioForMode$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long); static long long _logos_method$_ungrouped$CAMViewfinderViewController$_aspectRatioForMode$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static id (*_logos_orig$_ungrouped$CAMViewfinderViewController$_flashBadge)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CAMViewfinderViewController$_flashBadge(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static id (*_logos_orig$_ungrouped$CAMViewfinderViewController$_HDRBadge)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CAMViewfinderViewController$_HDRBadge(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static id (*_logos_orig$_ungrouped$CAMViewfinderViewController$_livePhotoBadge)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CAMViewfinderViewController$_livePhotoBadge(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHidePanoramaViewForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHidePanoramaViewForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool (*_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long, long long); static long long (*_logos_orig$_ungrouped$CAMTopBar$backgroundStyle)(_LOGOS_SELF_TYPE_NORMAL CAMTopBar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CAMTopBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMTopBar* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CAMFlashButton$_warningIndicatorView)(_LOGOS_SELF_TYPE_NORMAL CAMFlashButton* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CAMFlashButton$_warningIndicatorView(_LOGOS_SELF_TYPE_NORMAL CAMFlashButton* _LOGOS_SELF_CONST, SEL); static CAMFocusIndicatorRectView* (*_logos_orig$_ungrouped$CAMFocusIndicatorRectView$initWithSize$)(_LOGOS_SELF_TYPE_INIT CAMFocusIndicatorRectView*, SEL, long long) _LOGOS_RETURN_RETAINED; static CAMFocusIndicatorRectView* _logos_method$_ungrouped$CAMFocusIndicatorRectView$initWithSize$(_LOGOS_SELF_TYPE_INIT CAMFocusIndicatorRectView*, SEL, long long) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView)(_LOGOS_SELF_TYPE_NORMAL CAMPreviewViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView(_LOGOS_SELF_TYPE_NORMAL CAMPreviewViewController* _LOGOS_SELF_CONST, SEL); static CAMZoomSlider* (*_logos_orig$_ungrouped$CAMZoomSlider$initWithFrame$)(_LOGOS_SELF_TYPE_INIT CAMZoomSlider*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static CAMZoomSlider* _logos_method$_ungrouped$CAMZoomSlider$initWithFrame$(_LOGOS_SELF_TYPE_INIT CAMZoomSlider*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static long long (*_logos_orig$_ungrouped$CAMBottomBar$backgroundStyle)(_LOGOS_SELF_TYPE_NORMAL CAMBottomBar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CAMBottomBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMBottomBar* _LOGOS_SELF_CONST, SEL); static CAMModeDial* (*_logos_orig$_ungrouped$CAMModeDial$initWithFrame$)(_LOGOS_SELF_TYPE_INIT CAMModeDial*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static CAMModeDial* _logos_method$_ungrouped$CAMModeDial$initWithFrame$(_LOGOS_SELF_TYPE_INIT CAMModeDial*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static double (*_logos_orig$_ungrouped$CUShutterButton$_borderWidthForMode$)(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST, SEL, long long); static double _logos_method$_ungrouped$CUShutterButton$_borderWidthForMode$(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST, SEL, long long); static id (*_logos_orig$_ungrouped$CUShutterButton$_colorForMode$)(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST, SEL, long long); static id _logos_method$_ungrouped$CUShutterButton$_colorForMode$(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST, SEL, long long); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static long long _logos_method$_ungrouped$CAMViewfinderViewController$_aspectRatioForMode$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 1;
}



static long long _logos_method$_ungrouped$CAMTopBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMTopBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static id _logos_method$_ungrouped$CAMViewfinderViewController$_flashBadge(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$CAMFlashButton$_warningIndicatorView(_LOGOS_SELF_TYPE_NORMAL CAMFlashButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static id _logos_method$_ungrouped$CAMViewfinderViewController$_HDRBadge(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static id _logos_method$_ungrouped$CAMViewfinderViewController$_livePhotoBadge(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static CAMFocusIndicatorRectView* _logos_method$_ungrouped$CAMFocusIndicatorRectView$initWithSize$(_LOGOS_SELF_TYPE_INIT CAMFocusIndicatorRectView* __unused self, SEL __unused _cmd, long long arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static bool _logos_method$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView(_LOGOS_SELF_TYPE_NORMAL CAMPreviewViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static CAMZoomSlider* _logos_method$_ungrouped$CAMZoomSlider$initWithFrame$(_LOGOS_SELF_TYPE_INIT CAMZoomSlider* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHidePanoramaViewForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static long long _logos_method$_ungrouped$CAMBottomBar$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL CAMBottomBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static CAMModeDial* _logos_method$_ungrouped$CAMModeDial$initWithFrame$(_LOGOS_SELF_TYPE_INIT CAMModeDial* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static double _logos_method$_ungrouped$CUShutterButton$_borderWidthForMode$(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 0;
}



static id _logos_method$_ungrouped$CUShutterButton$_colorForMode$(_LOGOS_SELF_TYPE_NORMAL CUShutterButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = -1;
    return _logos_orig$_ungrouped$CUShutterButton$_colorForMode$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}



static bool _logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, long long arg2) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMUserPreferences = objc_getClass("CAMUserPreferences"); { MSHookMessageEx(_logos_class$_ungrouped$CAMUserPreferences, @selector(shouldResetCaptureConfiguration), (IMP)&_logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration, (IMP*)&_logos_orig$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration);}Class _logos_class$_ungrouped$CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_aspectRatioForMode:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_aspectRatioForMode$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_aspectRatioForMode$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFlashButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_flashBadge), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_flashBadge, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_flashBadge);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideHDRButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_HDRBadge), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_HDRBadge, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_HDRBadge);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideIrisButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_livePhotoBadge), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_livePhotoBadge, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_livePhotoBadge);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideTimerButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFlipButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideElapsedTimeViewForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHidePanoramaViewForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHidePanoramaViewForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHidePanoramaViewForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideImageWellForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideImageWellForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFilterButtonForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_shouldHideFramerateIndicatorForMode:device:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$);}Class _logos_class$_ungrouped$CAMTopBar = objc_getClass("CAMTopBar"); { MSHookMessageEx(_logos_class$_ungrouped$CAMTopBar, @selector(backgroundStyle), (IMP)&_logos_method$_ungrouped$CAMTopBar$backgroundStyle, (IMP*)&_logos_orig$_ungrouped$CAMTopBar$backgroundStyle);}Class _logos_class$_ungrouped$CAMFlashButton = objc_getClass("CAMFlashButton"); { MSHookMessageEx(_logos_class$_ungrouped$CAMFlashButton, @selector(_warningIndicatorView), (IMP)&_logos_method$_ungrouped$CAMFlashButton$_warningIndicatorView, (IMP*)&_logos_orig$_ungrouped$CAMFlashButton$_warningIndicatorView);}Class _logos_class$_ungrouped$CAMFocusIndicatorRectView = objc_getClass("CAMFocusIndicatorRectView"); { MSHookMessageEx(_logos_class$_ungrouped$CAMFocusIndicatorRectView, @selector(initWithSize:), (IMP)&_logos_method$_ungrouped$CAMFocusIndicatorRectView$initWithSize$, (IMP*)&_logos_orig$_ungrouped$CAMFocusIndicatorRectView$initWithSize$);}Class _logos_class$_ungrouped$CAMPreviewViewController = objc_getClass("CAMPreviewViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CAMPreviewViewController, @selector(_showExposureBiasSliderForPointView), (IMP)&_logos_method$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView, (IMP*)&_logos_orig$_ungrouped$CAMPreviewViewController$_showExposureBiasSliderForPointView);}Class _logos_class$_ungrouped$CAMZoomSlider = objc_getClass("CAMZoomSlider"); { MSHookMessageEx(_logos_class$_ungrouped$CAMZoomSlider, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$CAMZoomSlider$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$CAMZoomSlider$initWithFrame$);}Class _logos_class$_ungrouped$CAMBottomBar = objc_getClass("CAMBottomBar"); { MSHookMessageEx(_logos_class$_ungrouped$CAMBottomBar, @selector(backgroundStyle), (IMP)&_logos_method$_ungrouped$CAMBottomBar$backgroundStyle, (IMP*)&_logos_orig$_ungrouped$CAMBottomBar$backgroundStyle);}Class _logos_class$_ungrouped$CAMModeDial = objc_getClass("CAMModeDial"); { MSHookMessageEx(_logos_class$_ungrouped$CAMModeDial, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$CAMModeDial$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$CAMModeDial$initWithFrame$);}Class _logos_class$_ungrouped$CUShutterButton = objc_getClass("CUShutterButton"); { MSHookMessageEx(_logos_class$_ungrouped$CUShutterButton, @selector(_borderWidthForMode:), (IMP)&_logos_method$_ungrouped$CUShutterButton$_borderWidthForMode$, (IMP*)&_logos_orig$_ungrouped$CUShutterButton$_borderWidthForMode$);}{ MSHookMessageEx(_logos_class$_ungrouped$CUShutterButton, @selector(_colorForMode:), (IMP)&_logos_method$_ungrouped$CUShutterButton$_colorForMode$, (IMP*)&_logos_orig$_ungrouped$CUShutterButton$_colorForMode$);}} }
#line 172 "Tweak.xm"
