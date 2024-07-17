#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$BKLightLevelController$currentLightLevel(id self, SEL _cmd) {
    // Light=1,	Dark=2
    return 2;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BKLightLevelController = objc_getClass("BKLightLevelController");
    MSHookMessageEx(_ftt_class_BKLightLevelController, @selector(currentLightLevel), (IMP)_patched_ftt_meth_$BKLightLevelController$currentLightLevel, NULL);
}
