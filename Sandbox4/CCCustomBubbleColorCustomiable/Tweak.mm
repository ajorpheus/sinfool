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

@class CCUIControlCenterVisualEffect; @class CCUIControlCenterSettings; @class NCMaterialSettings; @class UIImageView; @class MPAVRoutingTableViewCell; 
static void (*_logos_orig$_ungrouped$CCUIControlCenterSettings$setBackgroundDarkening$)(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$CCUIControlCenterSettings$setBackgroundDarkening$(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$UIImageView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UIImageView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIImageView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIImageView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$)(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$)(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$)(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$NCMaterialSettings$setDarkenedWhiteAlpha$)(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$NCMaterialSettings$setDarkenedWhiteAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static CCUIControlCenterVisualEffect* (*_logos_orig$_ungrouped$CCUIControlCenterVisualEffect$initWithPrivateStyle$)(_LOGOS_SELF_TYPE_INIT CCUIControlCenterVisualEffect*, SEL, long long) _LOGOS_RETURN_RETAINED; static CCUIControlCenterVisualEffect* _logos_method$_ungrouped$CCUIControlCenterVisualEffect$initWithPrivateStyle$(_LOGOS_SELF_TYPE_INIT CCUIControlCenterVisualEffect*, SEL, long long) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$MPAVRoutingTableViewCell$setIconStyle$)(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingTableViewCell* _LOGOS_SELF_CONST, SEL, unsigned long long); static void _logos_method$_ungrouped$MPAVRoutingTableViewCell$setIconStyle$(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingTableViewCell* _LOGOS_SELF_CONST, SEL, unsigned long long); static void (*_logos_orig$_ungrouped$MPAVRoutingTableViewCell$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingTableViewCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MPAVRoutingTableViewCell$setTintColor$(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingTableViewCell* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CCUIControlCenterSettings$setBackgroundDarkening$(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.9;
    _logos_orig$_ungrouped$CCUIControlCenterSettings$setBackgroundDarkening$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIImageView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UIImageView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.25;
    _logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$(self, _cmd, arg1);
}



static CCUIControlCenterVisualEffect* _logos_method$_ungrouped$CCUIControlCenterVisualEffect$initWithPrivateStyle$(_LOGOS_SELF_TYPE_INIT CCUIControlCenterVisualEffect* __unused self, SEL __unused _cmd, long long arg1) _LOGOS_RETURN_RETAINED {
    
    arg1 = 1;
    return _logos_orig$_ungrouped$CCUIControlCenterVisualEffect$initWithPrivateStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$MPAVRoutingTableViewCell$setIconStyle$(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingTableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$MPAVRoutingTableViewCell$setIconStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$MPAVRoutingTableViewCell$setTintColor$(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingTableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$MPAVRoutingTableViewCell$setTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$NCMaterialSettings$setDarkenedWhiteAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$NCMaterialSettings$setDarkenedWhiteAlpha$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIControlCenterSettings = objc_getClass("CCUIControlCenterSettings"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIControlCenterSettings, @selector(setBackgroundDarkening:), (IMP)&_logos_method$_ungrouped$CCUIControlCenterSettings$setBackgroundDarkening$, (IMP*)&_logos_orig$_ungrouped$CCUIControlCenterSettings$setBackgroundDarkening$);}Class _logos_class$_ungrouped$UIImageView = objc_getClass("UIImageView"); { MSHookMessageEx(_logos_class$_ungrouped$UIImageView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UIImageView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UIImageView$setBackgroundColor$);}Class _logos_class$_ungrouped$NCMaterialSettings = objc_getClass("NCMaterialSettings"); { MSHookMessageEx(_logos_class$_ungrouped$NCMaterialSettings, @selector(setCutOutOverlayAlpha:), (IMP)&_logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$, (IMP*)&_logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$);}{ MSHookMessageEx(_logos_class$_ungrouped$NCMaterialSettings, @selector(setCutOutOverlayWhite:), (IMP)&_logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$, (IMP*)&_logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$);}{ MSHookMessageEx(_logos_class$_ungrouped$NCMaterialSettings, @selector(setCcWhiteOverlayAlpha:), (IMP)&_logos_method$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$, (IMP*)&_logos_orig$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$);}{ MSHookMessageEx(_logos_class$_ungrouped$NCMaterialSettings, @selector(setDarkenedWhiteAlpha:), (IMP)&_logos_method$_ungrouped$NCMaterialSettings$setDarkenedWhiteAlpha$, (IMP*)&_logos_orig$_ungrouped$NCMaterialSettings$setDarkenedWhiteAlpha$);}Class _logos_class$_ungrouped$CCUIControlCenterVisualEffect = objc_getClass("CCUIControlCenterVisualEffect"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIControlCenterVisualEffect, @selector(initWithPrivateStyle:), (IMP)&_logos_method$_ungrouped$CCUIControlCenterVisualEffect$initWithPrivateStyle$, (IMP*)&_logos_orig$_ungrouped$CCUIControlCenterVisualEffect$initWithPrivateStyle$);}Class _logos_class$_ungrouped$MPAVRoutingTableViewCell = objc_getClass("MPAVRoutingTableViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$MPAVRoutingTableViewCell, @selector(setIconStyle:), (IMP)&_logos_method$_ungrouped$MPAVRoutingTableViewCell$setIconStyle$, (IMP*)&_logos_orig$_ungrouped$MPAVRoutingTableViewCell$setIconStyle$);}{ MSHookMessageEx(_logos_class$_ungrouped$MPAVRoutingTableViewCell, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$MPAVRoutingTableViewCell$setTintColor$, (IMP*)&_logos_orig$_ungrouped$MPAVRoutingTableViewCell$setTintColor$);}} }
#line 73 "Tweak.xm"
