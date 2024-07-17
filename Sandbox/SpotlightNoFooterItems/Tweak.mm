#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$WGShortLookStyleButton$_dimension(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_WGShortLookStyleButton = objc_getClass("WGShortLookStyleButton");
    MSHookMessageEx(_ftt_class_WGShortLookStyleButton, @selector(_dimension), (IMP)_patched_ftt_meth_$WGShortLookStyleButton$_dimension, NULL);
}
