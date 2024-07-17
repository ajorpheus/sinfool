#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$BottomMenuBar$friendButton(id self, SEL _cmd) {
    // Notification Dot
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BottomMenuBar = objc_getClass("BottomMenuBar");
    MSHookMessageEx(_ftt_class_BottomMenuBar, @selector(friendButton), (IMP)_patched_ftt_meth_$BottomMenuBar$friendButton, NULL);
}
