#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$YTPlayerBarController$setPlayerViewLayout$)(id, SEL, int);
static void _patched_ftt_meth_$YTPlayerBarController$setPlayerViewLayout$(id self, SEL _cmd, int arg1) {
    arg1 = 0;
    _orig_ftt_meth_$YTPlayerBarController$setPlayerViewLayout$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_YTPlayerBarController = objc_getClass("YTPlayerBarController");
    MSHookMessageEx(_ftt_class_YTPlayerBarController, @selector(setPlayerViewLayout:), (IMP)_patched_ftt_meth_$YTPlayerBarController$setPlayerViewLayout$, (IMP *)_orig_ftt_meth_$YTPlayerBarController$setPlayerViewLayout$);
}
