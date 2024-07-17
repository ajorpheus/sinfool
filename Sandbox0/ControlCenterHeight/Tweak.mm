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

@class SBUIControlCenterButton; @class SBControlCenterContentContainerView; @class SBControlCenterSettings; 
static void (*_logos_orig$_ungrouped$SBControlCenterContentContainerView$setContentHeight$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterContentContainerView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBControlCenterContentContainerView$setContentHeight$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterContentContainerView* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$SBControlCenterSettings$useNewBounce)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBControlCenterSettings$useNewBounce(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBUIControlCenterButton$isCircleButton)(_LOGOS_SELF_TYPE_NORMAL SBUIControlCenterButton* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBUIControlCenterButton$isCircleButton(_LOGOS_SELF_TYPE_NORMAL SBUIControlCenterButton* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBControlCenterContentContainerView$setContentHeight$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterContentContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 436;
    _logos_orig$_ungrouped$SBControlCenterContentContainerView$setContentHeight$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBControlCenterSettings$useNewBounce(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBUIControlCenterButton$isCircleButton(_LOGOS_SELF_TYPE_NORMAL SBUIControlCenterButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBControlCenterContentContainerView = objc_getClass("SBControlCenterContentContainerView"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterContentContainerView, @selector(setContentHeight:), (IMP)&_logos_method$_ungrouped$SBControlCenterContentContainerView$setContentHeight$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterContentContainerView$setContentHeight$);}Class _logos_class$_ungrouped$SBControlCenterSettings = objc_getClass("SBControlCenterSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterSettings, @selector(useNewBounce), (IMP)&_logos_method$_ungrouped$SBControlCenterSettings$useNewBounce, (IMP*)&_logos_orig$_ungrouped$SBControlCenterSettings$useNewBounce);}Class _logos_class$_ungrouped$SBUIControlCenterButton = objc_getClass("SBUIControlCenterButton"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIControlCenterButton, @selector(isCircleButton), (IMP)&_logos_method$_ungrouped$SBUIControlCenterButton$isCircleButton, (IMP*)&_logos_orig$_ungrouped$SBUIControlCenterButton$isCircleButton);}} }
#line 25 "Tweak.xm"
