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

@class MPInstanceProvider; @class DLBrowserViewControllerIDownloader; @class SKSettingsViewController; 
static BOOL (*_logos_orig$_ungrouped$SKSettingsViewController$isFullVersion)(_LOGOS_SELF_TYPE_NORMAL SKSettingsViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SKSettingsViewController$isFullVersion(_LOGOS_SELF_TYPE_NORMAL SKSettingsViewController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$DLBrowserViewControllerIDownloader$canDownloadFile$)(_LOGOS_SELF_TYPE_NORMAL DLBrowserViewControllerIDownloader* _LOGOS_SELF_CONST, SEL, id); static BOOL _logos_method$_ungrouped$DLBrowserViewControllerIDownloader$canDownloadFile$(_LOGOS_SELF_TYPE_NORMAL DLBrowserViewControllerIDownloader* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$MPInstanceProvider$buildMPBannerAdManagerWithDelegate$)(_LOGOS_SELF_TYPE_NORMAL MPInstanceProvider* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$MPInstanceProvider$buildMPBannerAdManagerWithDelegate$(_LOGOS_SELF_TYPE_NORMAL MPInstanceProvider* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$MPInstanceProvider$buildMPInterstitialAdManagerWithDelegate$)(_LOGOS_SELF_TYPE_NORMAL MPInstanceProvider* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$MPInstanceProvider$buildMPInterstitialAdManagerWithDelegate$(_LOGOS_SELF_TYPE_NORMAL MPInstanceProvider* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$SKSettingsViewController$isFullVersion(_LOGOS_SELF_TYPE_NORMAL SKSettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$DLBrowserViewControllerIDownloader$canDownloadFile$(_LOGOS_SELF_TYPE_NORMAL DLBrowserViewControllerIDownloader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 1;
}



static id _logos_method$_ungrouped$MPInstanceProvider$buildMPBannerAdManagerWithDelegate$(_LOGOS_SELF_TYPE_NORMAL MPInstanceProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return NULL;
}



static id _logos_method$_ungrouped$MPInstanceProvider$buildMPInterstitialAdManagerWithDelegate$(_LOGOS_SELF_TYPE_NORMAL MPInstanceProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SKSettingsViewController = objc_getClass("SKSettingsViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SKSettingsViewController, @selector(isFullVersion), (IMP)&_logos_method$_ungrouped$SKSettingsViewController$isFullVersion, (IMP*)&_logos_orig$_ungrouped$SKSettingsViewController$isFullVersion);}Class _logos_class$_ungrouped$DLBrowserViewControllerIDownloader = objc_getClass("DLBrowserViewControllerIDownloader"); { MSHookMessageEx(_logos_class$_ungrouped$DLBrowserViewControllerIDownloader, @selector(canDownloadFile:), (IMP)&_logos_method$_ungrouped$DLBrowserViewControllerIDownloader$canDownloadFile$, (IMP*)&_logos_orig$_ungrouped$DLBrowserViewControllerIDownloader$canDownloadFile$);}Class _logos_class$_ungrouped$MPInstanceProvider = objc_getClass("MPInstanceProvider"); { MSHookMessageEx(_logos_class$_ungrouped$MPInstanceProvider, @selector(buildMPBannerAdManagerWithDelegate:), (IMP)&_logos_method$_ungrouped$MPInstanceProvider$buildMPBannerAdManagerWithDelegate$, (IMP*)&_logos_orig$_ungrouped$MPInstanceProvider$buildMPBannerAdManagerWithDelegate$);}{ MSHookMessageEx(_logos_class$_ungrouped$MPInstanceProvider, @selector(buildMPInterstitialAdManagerWithDelegate:), (IMP)&_logos_method$_ungrouped$MPInstanceProvider$buildMPInterstitialAdManagerWithDelegate$, (IMP*)&_logos_orig$_ungrouped$MPInstanceProvider$buildMPInterstitialAdManagerWithDelegate$);}} }
#line 27 "Tweak.xm"
