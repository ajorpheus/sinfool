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

@class GMSCopyrightOverlay; @class CardUIBannerView; 
static CardUIBannerView* (*_logos_orig$_ungrouped$CardUIBannerView$initWithFrame$serviceResolver$actionDelegate$)(_LOGOS_SELF_TYPE_INIT CardUIBannerView*, SEL, CGRect, id, id) _LOGOS_RETURN_RETAINED; static CardUIBannerView* _logos_method$_ungrouped$CardUIBannerView$initWithFrame$serviceResolver$actionDelegate$(_LOGOS_SELF_TYPE_INIT CardUIBannerView*, SEL, CGRect, id, id) _LOGOS_RETURN_RETAINED; static GMSCopyrightOverlay* (*_logos_orig$_ungrouped$GMSCopyrightOverlay$initWithFrame$)(_LOGOS_SELF_TYPE_INIT GMSCopyrightOverlay*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static GMSCopyrightOverlay* _logos_method$_ungrouped$GMSCopyrightOverlay$initWithFrame$(_LOGOS_SELF_TYPE_INIT GMSCopyrightOverlay*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static CardUIBannerView* _logos_method$_ungrouped$CardUIBannerView$initWithFrame$serviceResolver$actionDelegate$(_LOGOS_SELF_TYPE_INIT CardUIBannerView* __unused self, SEL __unused _cmd, CGRect arg1, id arg2, id arg3) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static GMSCopyrightOverlay* _logos_method$_ungrouped$GMSCopyrightOverlay$initWithFrame$(_LOGOS_SELF_TYPE_INIT GMSCopyrightOverlay* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CardUIBannerView = objc_getClass("CardUIBannerView"); { MSHookMessageEx(_logos_class$_ungrouped$CardUIBannerView, @selector(initWithFrame:serviceResolver:actionDelegate:), (IMP)&_logos_method$_ungrouped$CardUIBannerView$initWithFrame$serviceResolver$actionDelegate$, (IMP*)&_logos_orig$_ungrouped$CardUIBannerView$initWithFrame$serviceResolver$actionDelegate$);}Class _logos_class$_ungrouped$GMSCopyrightOverlay = objc_getClass("GMSCopyrightOverlay"); { MSHookMessageEx(_logos_class$_ungrouped$GMSCopyrightOverlay, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$GMSCopyrightOverlay$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$GMSCopyrightOverlay$initWithFrame$);}} }
#line 17 "Tweak.xm"