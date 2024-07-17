#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$)(id, SEL, id, id, id);
static id _patched_ftt_meth_$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$(id self, SEL _cmd, id arg1, id arg2, id arg3) {
    // Hide Icons:  (Arg#2) Yes=null, No=pass-through
    arg2 = NULL;
    return _orig_ftt_meth_$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$(self, _cmd, arg1, arg2, arg3);
}

static BOOL _patched_ftt_meth_$UIAlertControllerVisualStyle$hideActionSeparators(id self, SEL _cmd) {
    // Hide Separators
    return 1;
}

static BOOL _patched_ftt_meth_$UIAlertController$_canDismissWithGestureRecognizer(id self, SEL _cmd) {
    // Tap To Dismiss
    return 1;
}

static int _patched_ftt_meth_$UIAlertController$preferredStyle(id self, SEL _cmd) {
    return 1;
}

static id (*_orig_ftt_meth_$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$)(id, SEL, int, id, id);
static id _patched_ftt_meth_$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$(id self, SEL _cmd, int arg1, id arg2, id arg3) {
    arg1 = 0;
    return _orig_ftt_meth_$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIActionSheet = objc_getClass("UIActionSheet");
    MSHookMessageEx(_ftt_class_UIActionSheet, @selector(addMediaButtonWithTitle:iconView:andTableIconView:), (IMP)_patched_ftt_meth_$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$, (IMP *)_orig_ftt_meth_$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$);
    Class _ftt_class_UIAlertControllerVisualStyle = objc_getClass("UIAlertControllerVisualStyle");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyle, @selector(hideActionSeparators), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyle$hideActionSeparators, NULL);
    Class _ftt_class_UIAlertController = objc_getClass("UIAlertController");
    MSHookMessageEx(_ftt_class_UIAlertController, @selector(_canDismissWithGestureRecognizer), (IMP)_patched_ftt_meth_$UIAlertController$_canDismissWithGestureRecognizer, NULL);
    MSHookMessageEx(_ftt_class_UIAlertController, @selector(preferredStyle), (IMP)_patched_ftt_meth_$UIAlertController$preferredStyle, NULL);
    Class _ftt_class__UIAlertControllerVisualStyleProvidingWeakInterposer = objc_getClass("_UIAlertControllerVisualStyleProvidingWeakInterposer");
    MSHookMessageEx(_ftt_class__UIAlertControllerVisualStyleProvidingWeakInterposer, @selector(visualStyleForAlertControllerStyle:traitCollection:descriptor:), (IMP)_patched_ftt_meth_$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$, (IMP *)_orig_ftt_meth_$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$);
}
