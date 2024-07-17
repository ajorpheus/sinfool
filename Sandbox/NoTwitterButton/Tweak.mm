#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$RHFullPlayerViewController_iphone$showTwitterButton(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_RHFullPlayerViewController_iphone = objc_getClass("RHFullPlayerViewController_iphone");
    MSHookMessageEx(_ftt_class_RHFullPlayerViewController_iphone, @selector(showTwitterButton), (IMP)_patched_ftt_meth_$RHFullPlayerViewController_iphone$showTwitterButton, NULL);
}
