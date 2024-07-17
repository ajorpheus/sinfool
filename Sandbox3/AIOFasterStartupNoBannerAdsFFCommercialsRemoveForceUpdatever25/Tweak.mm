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

@class UIAlertView; @class GADAdFetcher; @class CBSiSkinSlider; 
static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$CBSiSkinSlider$setAdMarkersAreHidden$)(_LOGOS_SELF_TYPE_NORMAL CBSiSkinSlider* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$CBSiSkinSlider$setAdMarkersAreHidden$(_LOGOS_SELF_TYPE_NORMAL CBSiSkinSlider* _LOGOS_SELF_CONST, SEL, BOOL); static UIAlertView* (*_logos_orig$_ungrouped$UIAlertView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UIAlertView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UIAlertView* _logos_method$_ungrouped$UIAlertView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UIAlertView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static void _logos_method$_ungrouped$CBSiSkinSlider$setAdMarkersAreHidden$(_LOGOS_SELF_TYPE_NORMAL CBSiSkinSlider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$CBSiSkinSlider$setAdMarkersAreHidden$(self, _cmd, arg1);
}



static UIAlertView* _logos_method$_ungrouped$UIAlertView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UIAlertView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$CBSiSkinSlider = objc_getClass("CBSiSkinSlider"); { MSHookMessageEx(_logos_class$_ungrouped$CBSiSkinSlider, @selector(setAdMarkersAreHidden:), (IMP)&_logos_method$_ungrouped$CBSiSkinSlider$setAdMarkersAreHidden$, (IMP*)&_logos_orig$_ungrouped$CBSiSkinSlider$setAdMarkersAreHidden$);}Class _logos_class$_ungrouped$UIAlertView = objc_getClass("UIAlertView"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$UIAlertView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$UIAlertView$initWithFrame$);}} }
#line 22 "Tweak.xm"
