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

@class NCMaterialSettings; @class MTMaterialSettings; 
static void (*_logos_orig$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$)(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$)(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$)(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$MTMaterialSettings$setCcWhiteOverlayAlpha$)(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$MTMaterialSettings$setCcWhiteOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$MTMaterialSettings$setCutOutOverlayAlpha$)(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$MTMaterialSettings$setCutOutOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$MTMaterialSettings$setCutOutOverlayWhite$)(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$MTMaterialSettings$setCutOutOverlayWhite$(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST, SEL, double); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0.1;
    _logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$MTMaterialSettings$setCcWhiteOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$MTMaterialSettings$setCcWhiteOverlayAlpha$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$MTMaterialSettings$setCutOutOverlayAlpha$(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0.1;
    _logos_orig$_ungrouped$MTMaterialSettings$setCutOutOverlayAlpha$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$MTMaterialSettings$setCutOutOverlayWhite$(_LOGOS_SELF_TYPE_NORMAL MTMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$MTMaterialSettings$setCutOutOverlayWhite$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NCMaterialSettings = objc_getClass("NCMaterialSettings"); { MSHookMessageEx(_logos_class$_ungrouped$NCMaterialSettings, @selector(setCcWhiteOverlayAlpha:), (IMP)&_logos_method$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$, (IMP*)&_logos_orig$_ungrouped$NCMaterialSettings$setCcWhiteOverlayAlpha$);}{ MSHookMessageEx(_logos_class$_ungrouped$NCMaterialSettings, @selector(setCutOutOverlayAlpha:), (IMP)&_logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$, (IMP*)&_logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayAlpha$);}{ MSHookMessageEx(_logos_class$_ungrouped$NCMaterialSettings, @selector(setCutOutOverlayWhite:), (IMP)&_logos_method$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$, (IMP*)&_logos_orig$_ungrouped$NCMaterialSettings$setCutOutOverlayWhite$);}Class _logos_class$_ungrouped$MTMaterialSettings = objc_getClass("MTMaterialSettings"); { MSHookMessageEx(_logos_class$_ungrouped$MTMaterialSettings, @selector(setCcWhiteOverlayAlpha:), (IMP)&_logos_method$_ungrouped$MTMaterialSettings$setCcWhiteOverlayAlpha$, (IMP*)&_logos_orig$_ungrouped$MTMaterialSettings$setCcWhiteOverlayAlpha$);}{ MSHookMessageEx(_logos_class$_ungrouped$MTMaterialSettings, @selector(setCutOutOverlayAlpha:), (IMP)&_logos_method$_ungrouped$MTMaterialSettings$setCutOutOverlayAlpha$, (IMP*)&_logos_orig$_ungrouped$MTMaterialSettings$setCutOutOverlayAlpha$);}{ MSHookMessageEx(_logos_class$_ungrouped$MTMaterialSettings, @selector(setCutOutOverlayWhite:), (IMP)&_logos_method$_ungrouped$MTMaterialSettings$setCutOutOverlayWhite$, (IMP*)&_logos_orig$_ungrouped$MTMaterialSettings$setCutOutOverlayWhite$);}} }
#line 45 "Tweak.xm"
