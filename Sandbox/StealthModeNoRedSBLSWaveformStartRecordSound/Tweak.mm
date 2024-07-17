#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$RCLockScreenViewController$init(id self, SEL _cmd) {
    // Lockscreen Waveform View
    return NULL;
}

static bool _patched_ftt_meth_$_RCCaptureInputDeviceSession$useStartSoundEffect(id self, SEL _cmd) {
    // Start Record Sound
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_RCLockScreenViewController = objc_getClass("RCLockScreenViewController");
    MSHookMessageEx(_ftt_class_RCLockScreenViewController, @selector(init), (IMP)_patched_ftt_meth_$RCLockScreenViewController$init, NULL);
    Class _ftt_class__RCCaptureInputDeviceSession = objc_getClass("_RCCaptureInputDeviceSession");
    MSHookMessageEx(_ftt_class__RCCaptureInputDeviceSession, @selector(useStartSoundEffect), (IMP)_patched_ftt_meth_$_RCCaptureInputDeviceSession$useStartSoundEffect, NULL);
}
