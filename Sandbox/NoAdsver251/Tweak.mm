#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$FWAdManager$init(id self, SEL _cmd) {
    return NULL;
}

static bool _patched_ftt_meth_$CSComScore$isJailbroken(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$CSCore$isJailBroken(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$GADDevice$isJailbroken(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$Utils$isDeviceJailBroken(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$HSPersistentDataModel$isJailbroken(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$BugSenseJSONGenerator$isJailbroken(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FWAdManager = objc_getClass("FWAdManager");
    MSHookMessageEx(_ftt_class_FWAdManager, @selector(init), (IMP)_patched_ftt_meth_$FWAdManager$init, NULL);
    Class _ftt_class_CSComScore = objc_getClass("CSComScore");
    MSHookMessageEx(_ftt_class_CSComScore, @selector(isJailbroken), (IMP)_patched_ftt_meth_$CSComScore$isJailbroken, NULL);
    Class _ftt_class_CSCore = objc_getClass("CSCore");
    MSHookMessageEx(_ftt_class_CSCore, @selector(isJailBroken), (IMP)_patched_ftt_meth_$CSCore$isJailBroken, NULL);
    Class _ftt_class_GADDevice = objc_getClass("GADDevice");
    MSHookMessageEx(_ftt_class_GADDevice, @selector(isJailbroken), (IMP)_patched_ftt_meth_$GADDevice$isJailbroken, NULL);
    Class _ftt_class_Utils = objc_getClass("Utils");
    MSHookMessageEx(_ftt_class_Utils, @selector(isDeviceJailBroken), (IMP)_patched_ftt_meth_$Utils$isDeviceJailBroken, NULL);
    Class _ftt_class_HSPersistentDataModel = objc_getClass("HSPersistentDataModel");
    MSHookMessageEx(_ftt_class_HSPersistentDataModel, @selector(isJailbroken), (IMP)_patched_ftt_meth_$HSPersistentDataModel$isJailbroken, NULL);
    Class _ftt_class_BugSenseJSONGenerator = objc_getClass("BugSenseJSONGenerator");
    MSHookMessageEx(_ftt_class_BugSenseJSONGenerator, @selector(isJailbroken), (IMP)_patched_ftt_meth_$BugSenseJSONGenerator$isJailbroken, NULL);
}
