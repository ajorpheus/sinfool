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

@class GADViewController; @class GADBannerView; 
static GADViewController* (*_logos_orig$_ungrouped$GADViewController$init)(_LOGOS_SELF_TYPE_INIT GADViewController*, SEL) _LOGOS_RETURN_RETAINED; static GADViewController* _logos_method$_ungrouped$GADViewController$init(_LOGOS_SELF_TYPE_INIT GADViewController*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$)(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST, SEL, GADAdSize, BOOL); static void _logos_method$_ungrouped$GADBannerView$setAdSize$andReload$(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST, SEL, GADAdSize, BOOL); 

#line 3 "Tweak.xm"

static GADViewController* _logos_method$_ungrouped$GADViewController$init(_LOGOS_SELF_TYPE_INIT GADViewController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static void _logos_method$_ungrouped$GADBannerView$setAdSize$andReload$(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, GADAdSize arg1, BOOL arg2) {
    arg2 = 0;
    _logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GADViewController = objc_getClass("GADViewController"); { MSHookMessageEx(_logos_class$_ungrouped$GADViewController, @selector(init), (IMP)&_logos_method$_ungrouped$GADViewController$init, (IMP*)&_logos_orig$_ungrouped$GADViewController$init);}Class _logos_class$_ungrouped$GADBannerView = objc_getClass("GADBannerView"); { MSHookMessageEx(_logos_class$_ungrouped$GADBannerView, @selector(setAdSize:andReload:), (IMP)&_logos_method$_ungrouped$GADBannerView$setAdSize$andReload$, (IMP*)&_logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$);}} }
#line 16 "Tweak.xm"
