#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$ServiceCallManager$checkVersions(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$VODPlayerViewController$adCues(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ServiceCallManager = objc_getClass("ServiceCallManager");
    MSHookMessageEx(_ftt_class_ServiceCallManager, @selector(checkVersions), (IMP)_patched_ftt_meth_$ServiceCallManager$checkVersions, NULL);
    Class _ftt_class_VODPlayerViewController = objc_getClass("VODPlayerViewController");
    MSHookMessageEx(_ftt_class_VODPlayerViewController, @selector(adCues), (IMP)_patched_ftt_meth_$VODPlayerViewController$adCues, NULL);
}
