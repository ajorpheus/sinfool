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

@class ANVPlayerConfig; @class NBCDSplashScreenViewController; @class UIStatusBarForegroundStyleAttributes; 
static BOOL (*_logos_orig$_ungrouped$NBCDSplashScreenViewController$isVideoFinished)(_LOGOS_SELF_TYPE_NORMAL NBCDSplashScreenViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$NBCDSplashScreenViewController$isVideoFinished(_LOGOS_SELF_TYPE_NORMAL NBCDSplashScreenViewController* _LOGOS_SELF_CONST, SEL); static UIStatusBarForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$)(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, float, int) _LOGOS_RETURN_RETAINED; static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, float, int) _LOGOS_RETURN_RETAINED; static BOOL (*_logos_orig$_ungrouped$ANVPlayerConfig$serverSideAdSkipPreroll)(_LOGOS_SELF_TYPE_NORMAL ANVPlayerConfig* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$ANVPlayerConfig$serverSideAdSkipPreroll(_LOGOS_SELF_TYPE_NORMAL ANVPlayerConfig* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$NBCDSplashScreenViewController$isVideoFinished(_LOGOS_SELF_TYPE_NORMAL NBCDSplashScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes* __unused self, SEL __unused _cmd, float arg1, int arg2) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static BOOL _logos_method$_ungrouped$ANVPlayerConfig$serverSideAdSkipPreroll(_LOGOS_SELF_TYPE_NORMAL ANVPlayerConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NBCDSplashScreenViewController = objc_getClass("NBCDSplashScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$NBCDSplashScreenViewController, @selector(isVideoFinished), (IMP)&_logos_method$_ungrouped$NBCDSplashScreenViewController$isVideoFinished, (IMP*)&_logos_orig$_ungrouped$NBCDSplashScreenViewController$isVideoFinished);}Class _logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$);}Class _logos_class$_ungrouped$ANVPlayerConfig = objc_getClass("ANVPlayerConfig"); { MSHookMessageEx(_logos_class$_ungrouped$ANVPlayerConfig, @selector(serverSideAdSkipPreroll), (IMP)&_logos_method$_ungrouped$ANVPlayerConfig$serverSideAdSkipPreroll, (IMP*)&_logos_orig$_ungrouped$ANVPlayerConfig$serverSideAdSkipPreroll);}} }
#line 24 "Tweak.xm"
