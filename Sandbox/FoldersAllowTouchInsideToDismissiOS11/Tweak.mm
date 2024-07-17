#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBFloatyFolderView$_tapToCloseGestureRecognizer$shouldReceiveTouch$(id self, SEL _cmd, id arg1, id arg2) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBFloatyFolderView = objc_getClass("SBFloatyFolderView");
    MSHookMessageEx(_ftt_class_SBFloatyFolderView, @selector(_tapToCloseGestureRecognizer:shouldReceiveTouch:), (IMP)_patched_ftt_meth_$SBFloatyFolderView$_tapToCloseGestureRecognizer$shouldReceiveTouch$, NULL);
}
