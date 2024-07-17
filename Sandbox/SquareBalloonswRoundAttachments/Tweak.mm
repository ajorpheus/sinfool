#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$CKBalloonChatItem$balloonCorners(id self, SEL _cmd) {
    return 0;
}

static double _patched_ftt_meth_$CKUIBehavior$balloonMaskTailWidth(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$CKImageBalloonView$setHasTail$)(id, SEL, bool);
static void _patched_ftt_meth_$CKImageBalloonView$setHasTail$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$CKImageBalloonView$setHasTail$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKBalloonChatItem = objc_getClass("CKBalloonChatItem");
    MSHookMessageEx(_ftt_class_CKBalloonChatItem, @selector(balloonCorners), (IMP)_patched_ftt_meth_$CKBalloonChatItem$balloonCorners, NULL);
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(balloonMaskTailWidth), (IMP)_patched_ftt_meth_$CKUIBehavior$balloonMaskTailWidth, NULL);
    Class _ftt_class_CKImageBalloonView = objc_getClass("CKImageBalloonView");
    MSHookMessageEx(_ftt_class_CKImageBalloonView, @selector(setHasTail:), (IMP)_patched_ftt_meth_$CKImageBalloonView$setHasTail$, (IMP *)_orig_ftt_meth_$CKImageBalloonView$setHasTail$);
}
