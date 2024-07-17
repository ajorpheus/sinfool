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

@class SBControlCenterContentContainerView; @class SBControlCenterSettings; @class SBUIController; @class SBCCBrightnessSectionController; @class SBCCAirStuffSectionController; @class SBLockScreenView; 
static void (*_logos_orig$_ungrouped$SBControlCenterContentContainerView$setContentHeight$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterContentContainerView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBControlCenterContentContainerView$setContentHeight$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterContentContainerView* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$SBUIController$shouldShowControlCenterTabControlOnFirstSwipe)(_LOGOS_SELF_TYPE_NORMAL SBUIController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBUIController$shouldShowControlCenterTabControlOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBUIController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBControlCenterSettings$setControlAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBControlCenterSettings$setControlAlpha$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SBControlCenterSettings$setHighlightColor$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBControlCenterSettings$setHighlightColor$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBControlCenterSettings$setHighlightAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBControlCenterSettings$setHighlightAlpha$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL, bool, id); static bool (*_logos_orig$_ungrouped$SBCCBrightnessSectionController$_shouldDarkenBackground)(_LOGOS_SELF_TYPE_NORMAL SBCCBrightnessSectionController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBCCBrightnessSectionController$_shouldDarkenBackground(_LOGOS_SELF_TYPE_NORMAL SBCCBrightnessSectionController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBCCAirStuffSectionController$setAirDropEnabled$)(_LOGOS_SELF_TYPE_NORMAL SBCCAirStuffSectionController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBCCAirStuffSectionController$setAirDropEnabled$(_LOGOS_SELF_TYPE_NORMAL SBCCAirStuffSectionController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBControlCenterContentContainerView$setContentHeight$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterContentContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 429;
    _logos_orig$_ungrouped$SBControlCenterContentContainerView$setContentHeight$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBUIController$shouldShowControlCenterTabControlOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBUIController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$SBControlCenterSettings$setControlAlpha$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBControlCenterSettings$setControlAlpha$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SBControlCenterSettings$setHighlightColor$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SBControlCenterSettings$setHighlightColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBControlCenterSettings$setHighlightAlpha$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBControlCenterSettings$setHighlightAlpha$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBCCBrightnessSectionController$_shouldDarkenBackground(_LOGOS_SELF_TYPE_NORMAL SBCCBrightnessSectionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$SBCCAirStuffSectionController$setAirDropEnabled$(_LOGOS_SELF_TYPE_NORMAL SBCCAirStuffSectionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBCCAirStuffSectionController$setAirDropEnabled$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBControlCenterContentContainerView = objc_getClass("SBControlCenterContentContainerView"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterContentContainerView, @selector(setContentHeight:), (IMP)&_logos_method$_ungrouped$SBControlCenterContentContainerView$setContentHeight$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterContentContainerView$setContentHeight$);}Class _logos_class$_ungrouped$SBUIController = objc_getClass("SBUIController"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIController, @selector(shouldShowControlCenterTabControlOnFirstSwipe), (IMP)&_logos_method$_ungrouped$SBUIController$shouldShowControlCenterTabControlOnFirstSwipe, (IMP*)&_logos_orig$_ungrouped$SBUIController$shouldShowControlCenterTabControlOnFirstSwipe);}Class _logos_class$_ungrouped$SBControlCenterSettings = objc_getClass("SBControlCenterSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterSettings, @selector(setControlAlpha:), (IMP)&_logos_method$_ungrouped$SBControlCenterSettings$setControlAlpha$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterSettings$setControlAlpha$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterSettings, @selector(setHighlightColor:), (IMP)&_logos_method$_ungrouped$SBControlCenterSettings$setHighlightColor$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterSettings$setHighlightColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterSettings, @selector(setHighlightAlpha:), (IMP)&_logos_method$_ungrouped$SBControlCenterSettings$setHighlightAlpha$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterSettings$setHighlightAlpha$);}Class _logos_class$_ungrouped$SBLockScreenView = objc_getClass("SBLockScreenView"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenView, @selector(setBottomGrabberHidden:forRequester:), (IMP)&_logos_method$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenView$setBottomGrabberHidden$forRequester$);}Class _logos_class$_ungrouped$SBCCBrightnessSectionController = objc_getClass("SBCCBrightnessSectionController"); { MSHookMessageEx(_logos_class$_ungrouped$SBCCBrightnessSectionController, @selector(_shouldDarkenBackground), (IMP)&_logos_method$_ungrouped$SBCCBrightnessSectionController$_shouldDarkenBackground, (IMP*)&_logos_orig$_ungrouped$SBCCBrightnessSectionController$_shouldDarkenBackground);}Class _logos_class$_ungrouped$SBCCAirStuffSectionController = objc_getClass("SBCCAirStuffSectionController"); { MSHookMessageEx(_logos_class$_ungrouped$SBCCAirStuffSectionController, @selector(setAirDropEnabled:), (IMP)&_logos_method$_ungrouped$SBCCAirStuffSectionController$setAirDropEnabled$, (IMP*)&_logos_orig$_ungrouped$SBCCAirStuffSectionController$setAirDropEnabled$);}} }
#line 65 "Tweak.xm"
