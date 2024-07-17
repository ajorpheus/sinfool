#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKTextMessagePartChatItem$_attributedTextWithTextColor$(id self, SEL _cmd, id arg1) {
    // Set Text Color... (Arg#1)
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
}

static bool _patched_ftt_meth_$CKColoredBalloonView$wantsGradient(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKTextMessagePartChatItem = objc_getClass("CKTextMessagePartChatItem");
    MSHookMessageEx(_ftt_class_CKTextMessagePartChatItem, @selector(_attributedTextWithTextColor:), (IMP)_patched_ftt_meth_$CKTextMessagePartChatItem$_attributedTextWithTextColor$, NULL);
    Class _ftt_class_CKColoredBalloonView = objc_getClass("CKColoredBalloonView");
    MSHookMessageEx(_ftt_class_CKColoredBalloonView, @selector(wantsGradient), (IMP)_patched_ftt_meth_$CKColoredBalloonView$wantsGradient, NULL);
}
