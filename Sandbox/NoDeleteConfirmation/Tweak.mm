#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUDeletePhotosActionController = objc_getClass("PUDeletePhotosActionController");
    MSHookMessageEx(_ftt_class_PUDeletePhotosActionController, @selector(shouldSkipDeleteConfirmation), (IMP)_patched_ftt_meth_$PUDeletePhotosActionController$shouldSkipDeleteConfirmation, NULL);
}
