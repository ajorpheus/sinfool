#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$FLPatch$editable(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FLPatch = objc_getClass("FLPatch");
    MSHookMessageEx(_ftt_class_FLPatch, @selector(editable), (IMP)_patched_ftt_meth_$FLPatch$editable, NULL);
}
