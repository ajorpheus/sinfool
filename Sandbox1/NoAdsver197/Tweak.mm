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

@class Interstitiel; @class GADAdFetcher; @class MigalOpenGLViewController; 
static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static Interstitiel* (*_logos_orig$_ungrouped$Interstitiel$initWithFrame$)(_LOGOS_SELF_TYPE_INIT Interstitiel*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static Interstitiel* _logos_method$_ungrouped$Interstitiel$initWithFrame$(_LOGOS_SELF_TYPE_INIT Interstitiel*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BOOL (*_logos_orig$_ungrouped$MigalOpenGLViewController$showInterstitial)(_LOGOS_SELF_TYPE_NORMAL MigalOpenGLViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$MigalOpenGLViewController$showInterstitial(_LOGOS_SELF_TYPE_NORMAL MigalOpenGLViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static Interstitiel* _logos_method$_ungrouped$Interstitiel$initWithFrame$(_LOGOS_SELF_TYPE_INIT Interstitiel* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static BOOL _logos_method$_ungrouped$MigalOpenGLViewController$showInterstitial(_LOGOS_SELF_TYPE_NORMAL MigalOpenGLViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$Interstitiel = objc_getClass("Interstitiel"); { MSHookMessageEx(_logos_class$_ungrouped$Interstitiel, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$Interstitiel$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$Interstitiel$initWithFrame$);}Class _logos_class$_ungrouped$MigalOpenGLViewController = objc_getClass("MigalOpenGLViewController"); { MSHookMessageEx(_logos_class$_ungrouped$MigalOpenGLViewController, @selector(showInterstitial), (IMP)&_logos_method$_ungrouped$MigalOpenGLViewController$showInterstitial, (IMP*)&_logos_orig$_ungrouped$MigalOpenGLViewController$showInterstitial);}} }
#line 21 "Tweak.xm"
