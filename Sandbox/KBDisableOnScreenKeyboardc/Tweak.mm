#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UIKeyboard$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboard = objc_getClass("UIKeyboard");
    MSHookMessageEx(_ftt_class_UIKeyboard, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$UIKeyboard$initWithFrame$, NULL);
}
