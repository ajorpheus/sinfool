#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBIconLabelImageParameters$text(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconLabelImageParameters = objc_getClass("SBIconLabelImageParameters");
    MSHookMessageEx(_ftt_class_SBIconLabelImageParameters, @selector(text), (IMP)_patched_ftt_meth_$SBIconLabelImageParameters$text, NULL);
}
