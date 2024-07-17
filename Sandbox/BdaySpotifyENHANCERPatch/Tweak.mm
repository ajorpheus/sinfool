#import <UIKit/UIKit.h>

#include <substrate.h>

static int _patched_ftt_meth_$StreamQualitySettingsSection$numberOfChoices(id self, SEL _cmd) {
    // Adds Extreme Quality Option (FYI: Extreme ONLY works w/versions 1.7.1 & below)
    return 3;
}

static id (*_orig_ftt_meth_$PlayController$initWithSession$adController$)(id, SEL, id, id);
static id _patched_ftt_meth_$PlayController$initWithSession$adController$(id self, SEL _cmd, id arg1, id arg2) {
    // Removes Ads
    arg2 = NULL;
    return _orig_ftt_meth_$PlayController$initWithSession$adController$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_StreamQualitySettingsSection = objc_getClass("StreamQualitySettingsSection");
    MSHookMessageEx(_ftt_class_StreamQualitySettingsSection, @selector(numberOfChoices), (IMP)_patched_ftt_meth_$StreamQualitySettingsSection$numberOfChoices, NULL);
    Class _ftt_class_PlayController = objc_getClass("PlayController");
    MSHookMessageEx(_ftt_class_PlayController, @selector(initWithSession:adController:), (IMP)_patched_ftt_meth_$PlayController$initWithSession$adController$, (IMP *)_orig_ftt_meth_$PlayController$initWithSession$adController$);
}
