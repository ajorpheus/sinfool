#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SettingsManager$versionAnalyzer(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SettingsManager = objc_getClass("SettingsManager");
    MSHookMessageEx(_ftt_class_SettingsManager, @selector(versionAnalyzer), (IMP)_patched_ftt_meth_$SettingsManager$versionAnalyzer, NULL);
}
