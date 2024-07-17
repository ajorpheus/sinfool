#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$CKMessagePartChatItem$color(id self, SEL _cmd) {
    // White Text (left balloon): (Yes=T, No=P)
    return 1;
}

static bool _patched_ftt_meth_$CKColoredBalloonView$wantsGradient(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKMessagePartChatItem = objc_getClass("CKMessagePartChatItem");
    MSHookMessageEx(_ftt_class_CKMessagePartChatItem, @selector(color), (IMP)_patched_ftt_meth_$CKMessagePartChatItem$color, NULL);
    Class _ftt_class_CKColoredBalloonView = objc_getClass("CKColoredBalloonView");
    MSHookMessageEx(_ftt_class_CKColoredBalloonView, @selector(wantsGradient), (IMP)_patched_ftt_meth_$CKColoredBalloonView$wantsGradient, NULL);
}
