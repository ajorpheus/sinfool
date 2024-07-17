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

@class SBBannerGestureHandler; 
static SBBannerGestureHandler* (*_logos_orig$_ungrouped$SBBannerGestureHandler$initWithBannerController$bannerViewController$)(_LOGOS_SELF_TYPE_INIT SBBannerGestureHandler*, SEL, id, id) _LOGOS_RETURN_RETAINED; static SBBannerGestureHandler* _logos_method$_ungrouped$SBBannerGestureHandler$initWithBannerController$bannerViewController$(_LOGOS_SELF_TYPE_INIT SBBannerGestureHandler*, SEL, id, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static SBBannerGestureHandler* _logos_method$_ungrouped$SBBannerGestureHandler$initWithBannerController$bannerViewController$(_LOGOS_SELF_TYPE_INIT SBBannerGestureHandler* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    
    arg2 = NULL;
    return _logos_orig$_ungrouped$SBBannerGestureHandler$initWithBannerController$bannerViewController$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBBannerGestureHandler = objc_getClass("SBBannerGestureHandler"); { MSHookMessageEx(_logos_class$_ungrouped$SBBannerGestureHandler, @selector(initWithBannerController:bannerViewController:), (IMP)&_logos_method$_ungrouped$SBBannerGestureHandler$initWithBannerController$bannerViewController$, (IMP*)&_logos_orig$_ungrouped$SBBannerGestureHandler$initWithBannerController$bannerViewController$);}} }
#line 11 "Tweak.xm"
