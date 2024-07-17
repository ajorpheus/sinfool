#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CUCaptureController$startCapturingBurstWithRequest$error$(id self, SEL _cmd, id arg1, id* arg2) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CUCaptureController = objc_getClass("CUCaptureController");
    MSHookMessageEx(_ftt_class_CUCaptureController, @selector(startCapturingBurstWithRequest:error:), (IMP)_patched_ftt_meth_$CUCaptureController$startCapturingBurstWithRequest$error$, NULL);
}
