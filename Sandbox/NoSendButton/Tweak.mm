#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CKUIBehavior$shouldNotShowSendButton(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(shouldNotShowSendButton), (IMP)_patched_ftt_meth_$CKUIBehavior$shouldNotShowSendButton, NULL);
}
