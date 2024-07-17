#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBApplication$suppressesCoverSheetGesture(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBApplication = objc_getClass("SBApplication");
    MSHookMessageEx(_ftt_class_SBApplication, @selector(suppressesCoverSheetGesture), (IMP)_patched_ftt_meth_$SBApplication$suppressesCoverSheetGesture, NULL);
}
