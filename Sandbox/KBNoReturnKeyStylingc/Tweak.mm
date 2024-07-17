#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UITextInputTraits$suppressReturnKeyStyling(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(suppressReturnKeyStyling), (IMP)_patched_ftt_meth_$UITextInputTraits$suppressReturnKeyStyling, NULL);
}
