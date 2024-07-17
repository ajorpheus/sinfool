#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SKSettingsViewController$isFullVersion(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$DLBrowserViewControllerIDownloader$canDownloadFile$(id self, SEL _cmd, id arg1) {
    return 1;
}

static id _patched_ftt_meth_$MPInstanceProvider$buildMPBannerAdManagerWithDelegate$(id self, SEL _cmd, id arg1) {
    return NULL;
}

static id _patched_ftt_meth_$MPInstanceProvider$buildMPInterstitialAdManagerWithDelegate$(id self, SEL _cmd, id arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SKSettingsViewController = objc_getClass("SKSettingsViewController");
    MSHookMessageEx(_ftt_class_SKSettingsViewController, @selector(isFullVersion), (IMP)_patched_ftt_meth_$SKSettingsViewController$isFullVersion, NULL);
    Class _ftt_class_DLBrowserViewControllerIDownloader = objc_getClass("DLBrowserViewControllerIDownloader");
    MSHookMessageEx(_ftt_class_DLBrowserViewControllerIDownloader, @selector(canDownloadFile:), (IMP)_patched_ftt_meth_$DLBrowserViewControllerIDownloader$canDownloadFile$, NULL);
    Class _ftt_class_MPInstanceProvider = objc_getClass("MPInstanceProvider");
    MSHookMessageEx(_ftt_class_MPInstanceProvider, @selector(buildMPBannerAdManagerWithDelegate:), (IMP)_patched_ftt_meth_$MPInstanceProvider$buildMPBannerAdManagerWithDelegate$, NULL);
    MSHookMessageEx(_ftt_class_MPInstanceProvider, @selector(buildMPInterstitialAdManagerWithDelegate:), (IMP)_patched_ftt_meth_$MPInstanceProvider$buildMPInterstitialAdManagerWithDelegate$, NULL);
}
