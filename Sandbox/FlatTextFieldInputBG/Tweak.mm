#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKMessageEntryView$audioButton(id self, SEL _cmd) {
    // Hide Audio Button:  (Yes=NULL, No=pass-through)
    return NULL;
}

static bool _patched_ftt_meth_$CKComposition$isSendAnimated(id self, SEL _cmd) {
    // Send Animated:  (True or False)
    return 0;
}

static id _patched_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$_initWithFrame$active$lineWidth$updateView$(id self, SEL _cmd, CGRect arg1, bool arg2, double arg3, bool arg4) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKMessageEntryView = objc_getClass("CKMessageEntryView");
    MSHookMessageEx(_ftt_class_CKMessageEntryView, @selector(audioButton), (IMP)_patched_ftt_meth_$CKMessageEntryView$audioButton, NULL);
    Class _ftt_class_CKComposition = objc_getClass("CKComposition");
    MSHookMessageEx(_ftt_class_CKComposition, @selector(isSendAnimated), (IMP)_patched_ftt_meth_$CKComposition$isSendAnimated, NULL);
    Class _ftt_class__UITextFieldRoundedRectBackgroundViewNeue = objc_getClass("_UITextFieldRoundedRectBackgroundViewNeue");
    MSHookMessageEx(_ftt_class__UITextFieldRoundedRectBackgroundViewNeue, @selector(_initWithFrame:active:lineWidth:updateView:), (IMP)_patched_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$_initWithFrame$active$lineWidth$updateView$, NULL);
}
