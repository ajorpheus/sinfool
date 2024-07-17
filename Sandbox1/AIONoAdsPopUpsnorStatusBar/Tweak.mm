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

@class UIViewController; @class MAdsView; @class ADCAd; 
static BOOL (*_logos_orig$_ungrouped$UIViewController$prefersStatusBarHidden)(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UIViewController$prefersStatusBarHidden(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$MAdsView$getAdView)(_LOGOS_SELF_TYPE_NORMAL MAdsView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$MAdsView$getAdView(_LOGOS_SELF_TYPE_NORMAL MAdsView* _LOGOS_SELF_CONST, SEL); static ADCAd* (*_logos_orig$_ungrouped$ADCAd$init$)(_LOGOS_SELF_TYPE_INIT ADCAd*, SEL, id) _LOGOS_RETURN_RETAINED; static ADCAd* _logos_method$_ungrouped$ADCAd$init$(_LOGOS_SELF_TYPE_INIT ADCAd*, SEL, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$UIViewController$prefersStatusBarHidden(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static id _logos_method$_ungrouped$MAdsView$getAdView(_LOGOS_SELF_TYPE_NORMAL MAdsView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static ADCAd* _logos_method$_ungrouped$ADCAd$init$(_LOGOS_SELF_TYPE_INIT ADCAd* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIViewController = objc_getClass("UIViewController"); { MSHookMessageEx(_logos_class$_ungrouped$UIViewController, @selector(prefersStatusBarHidden), (IMP)&_logos_method$_ungrouped$UIViewController$prefersStatusBarHidden, (IMP*)&_logos_orig$_ungrouped$UIViewController$prefersStatusBarHidden);}Class _logos_class$_ungrouped$MAdsView = objc_getClass("MAdsView"); { MSHookMessageEx(_logos_class$_ungrouped$MAdsView, @selector(getAdView), (IMP)&_logos_method$_ungrouped$MAdsView$getAdView, (IMP*)&_logos_orig$_ungrouped$MAdsView$getAdView);}Class _logos_class$_ungrouped$ADCAd = objc_getClass("ADCAd"); { MSHookMessageEx(_logos_class$_ungrouped$ADCAd, @selector(init:), (IMP)&_logos_method$_ungrouped$ADCAd$init$, (IMP*)&_logos_orig$_ungrouped$ADCAd$init$);}} }
#line 21 "Tweak.xm"
