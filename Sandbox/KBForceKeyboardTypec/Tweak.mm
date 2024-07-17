#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UITextInputTraits$keyboardType(id self, SEL _cmd) {
    // See suggestions above...
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(keyboardType), (IMP)_patched_ftt_meth_$UITextInputTraits$keyboardType, NULL);
}
