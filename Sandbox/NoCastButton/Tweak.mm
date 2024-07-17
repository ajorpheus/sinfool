#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$YTSettings$disableMDXDeviceDiscovery(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_YTSettings = objc_getClass("YTSettings");
    MSHookMessageEx(_ftt_class_YTSettings, @selector(disableMDXDeviceDiscovery), (IMP)_patched_ftt_meth_$YTSettings$disableMDXDeviceDiscovery, NULL);
}
