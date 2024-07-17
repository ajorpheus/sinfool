#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$VPAdBreak$watched(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$ABCVODVideoPlayerViewController$adCues(id self, SEL _cmd) {
    return NULL;
}

static BOOL _patched_ftt_meth_$ServiceCallManager$checkVersions(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_VPAdBreak = objc_getClass("VPAdBreak");
    MSHookMessageEx(_ftt_class_VPAdBreak, @selector(watched), (IMP)_patched_ftt_meth_$VPAdBreak$watched, NULL);
    Class _ftt_class_ABCVODVideoPlayerViewController = objc_getClass("ABCVODVideoPlayerViewController");
    MSHookMessageEx(_ftt_class_ABCVODVideoPlayerViewController, @selector(adCues), (IMP)_patched_ftt_meth_$ABCVODVideoPlayerViewController$adCues, NULL);
    Class _ftt_class_ServiceCallManager = objc_getClass("ServiceCallManager");
    MSHookMessageEx(_ftt_class_ServiceCallManager, @selector(checkVersions), (IMP)_patched_ftt_meth_$ServiceCallManager$checkVersions, NULL);
}
