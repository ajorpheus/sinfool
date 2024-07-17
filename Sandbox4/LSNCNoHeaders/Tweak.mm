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

@class NCShortLookView; @class NCMaterialView; @class NCMaterialSettings; 
static NCMaterialView* (*_logos_orig$_ungrouped$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$)(_LOGOS_SELF_TYPE_INIT NCMaterialView*, SEL, unsigned long long, id, bool) _LOGOS_RETURN_RETAINED; static NCMaterialView* _logos_method$_ungrouped$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$(_LOGOS_SELF_TYPE_INIT NCMaterialView*, SEL, unsigned long long, id, bool) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$NCMaterialSettings$setWhiteAlpha$)(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$NCMaterialSettings$setWhiteAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$NCShortLookView$isHeaderHidden)(_LOGOS_SELF_TYPE_NORMAL NCShortLookView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$NCShortLookView$isHeaderHidden(_LOGOS_SELF_TYPE_NORMAL NCShortLookView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static NCMaterialView* _logos_method$_ungrouped$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$(_LOGOS_SELF_TYPE_INIT NCMaterialView* __unused self, SEL __unused _cmd, unsigned long long arg1, id arg2, bool arg3) _LOGOS_RETURN_RETAINED {
    
    arg1 = 3;
    return _logos_orig$_ungrouped$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$NCMaterialSettings$setWhiteAlpha$(_LOGOS_SELF_TYPE_NORMAL NCMaterialSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.6;
    _logos_orig$_ungrouped$NCMaterialSettings$setWhiteAlpha$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$NCShortLookView$isHeaderHidden(_LOGOS_SELF_TYPE_NORMAL NCShortLookView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NCMaterialView = objc_getClass("NCMaterialView"); { MSHookMessageEx(_logos_class$_ungrouped$NCMaterialView, @selector(initWithStyleOptions:materialSettings:captureOnly:), (IMP)&_logos_method$_ungrouped$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$, (IMP*)&_logos_orig$_ungrouped$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$);}Class _logos_class$_ungrouped$NCMaterialSettings = objc_getClass("NCMaterialSettings"); { MSHookMessageEx(_logos_class$_ungrouped$NCMaterialSettings, @selector(setWhiteAlpha:), (IMP)&_logos_method$_ungrouped$NCMaterialSettings$setWhiteAlpha$, (IMP*)&_logos_orig$_ungrouped$NCMaterialSettings$setWhiteAlpha$);}Class _logos_class$_ungrouped$NCShortLookView = objc_getClass("NCShortLookView"); { MSHookMessageEx(_logos_class$_ungrouped$NCShortLookView, @selector(isHeaderHidden), (IMP)&_logos_method$_ungrouped$NCShortLookView$isHeaderHidden, (IMP*)&_logos_orig$_ungrouped$NCShortLookView$isHeaderHidden);}} }
#line 25 "Tweak.xm"
