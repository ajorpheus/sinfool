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

@class TopViewVC; @class UIWebView; @class ExternalPoiController; 
static bool (*_logos_orig$_ungrouped$TopViewVC$shouldOpenZeroSpeedViewController$)(_LOGOS_SELF_TYPE_NORMAL TopViewVC* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$TopViewVC$shouldOpenZeroSpeedViewController$(_LOGOS_SELF_TYPE_NORMAL TopViewVC* _LOGOS_SELF_CONST, SEL, id); static ExternalPoiController* (*_logos_orig$_ungrouped$ExternalPoiController$init)(_LOGOS_SELF_TYPE_INIT ExternalPoiController*, SEL) _LOGOS_RETURN_RETAINED; static ExternalPoiController* _logos_method$_ungrouped$ExternalPoiController$init(_LOGOS_SELF_TYPE_INIT ExternalPoiController*, SEL) _LOGOS_RETURN_RETAINED; static UIWebView* (*_logos_orig$_ungrouped$UIWebView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UIWebView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UIWebView* _logos_method$_ungrouped$UIWebView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UIWebView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$TopViewVC$shouldOpenZeroSpeedViewController$(_LOGOS_SELF_TYPE_NORMAL TopViewVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
}



static ExternalPoiController* _logos_method$_ungrouped$ExternalPoiController$init(_LOGOS_SELF_TYPE_INIT ExternalPoiController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static UIWebView* _logos_method$_ungrouped$UIWebView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UIWebView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TopViewVC = objc_getClass("TopViewVC"); { MSHookMessageEx(_logos_class$_ungrouped$TopViewVC, @selector(shouldOpenZeroSpeedViewController:), (IMP)&_logos_method$_ungrouped$TopViewVC$shouldOpenZeroSpeedViewController$, (IMP*)&_logos_orig$_ungrouped$TopViewVC$shouldOpenZeroSpeedViewController$);}Class _logos_class$_ungrouped$ExternalPoiController = objc_getClass("ExternalPoiController"); { MSHookMessageEx(_logos_class$_ungrouped$ExternalPoiController, @selector(init), (IMP)&_logos_method$_ungrouped$ExternalPoiController$init, (IMP*)&_logos_orig$_ungrouped$ExternalPoiController$init);}Class _logos_class$_ungrouped$UIWebView = objc_getClass("UIWebView"); { MSHookMessageEx(_logos_class$_ungrouped$UIWebView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$UIWebView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$UIWebView$initWithFrame$);}} }
#line 21 "Tweak.xm"
