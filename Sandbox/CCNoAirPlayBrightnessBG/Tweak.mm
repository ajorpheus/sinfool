#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBCCBrightnessSectionController$_shouldDarkenBackground(id self, SEL _cmd) {
    // Brighness BG
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBCCBrightnessSectionController = objc_getClass("SBCCBrightnessSectionController");
    MSHookMessageEx(_ftt_class_SBCCBrightnessSectionController, @selector(_shouldDarkenBackground), (IMP)_patched_ftt_meth_$SBCCBrightnessSectionController$_shouldDarkenBackground, NULL);
}
