#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$NBAUserSettingsManager$firstAppStarted(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NBAUserSettingsManager = objc_getClass("NBAUserSettingsManager");
    MSHookMessageEx(_ftt_class_NBAUserSettingsManager, @selector(firstAppStarted), (IMP)_patched_ftt_meth_$NBAUserSettingsManager$firstAppStarted, NULL);
}
