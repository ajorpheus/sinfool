#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBMediaController$routeOtherThanHandsetIsAvailable(id self, SEL _cmd) {
    // Show=True, Hide=False
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBMediaController = objc_getClass("SBMediaController");
    MSHookMessageEx(_ftt_class_SBMediaController, @selector(routeOtherThanHandsetIsAvailable), (IMP)_patched_ftt_meth_$SBMediaController$routeOtherThanHandsetIsAvailable, NULL);
}
