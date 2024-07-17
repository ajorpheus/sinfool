#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$RemoteMouseHDAppDelegate$isShowAdsBox(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_RemoteMouseHDAppDelegate = objc_getClass("RemoteMouseHDAppDelegate");
    MSHookMessageEx(_ftt_class_RemoteMouseHDAppDelegate, @selector(isShowAdsBox), (IMP)_patched_ftt_meth_$RemoteMouseHDAppDelegate$isShowAdsBox, NULL);
}
