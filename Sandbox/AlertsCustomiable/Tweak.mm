#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UITraitCollection$userInterfaceIdiom(id self, SEL _cmd) {
    // •
    return 3;
}

static bool _patched_ftt_meth_$UINavigationButton$_isExternalRoundedRectButton(id self, SEL _cmd) {
    // •
    return 0;
}

static long long _patched_ftt_meth_$UIAlertController$preferredStyle(id self, SEL _cmd) {
    // Center Alert:  Yes=1, No=0
    return 1;
}

static void (*_orig_ftt_meth_$_UIAlertControllerCarBackgroundView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UIAlertControllerCarBackgroundView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Backdrop BG Color (Opaque):  "DELETE this to SHOW stock backdrop blur"
    arg1 = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UIAlertControllerCarBackgroundView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UIAlertControllerCarBackgroundView$setCornerRadius$)(id, SEL, double);
static void _patched_ftt_meth_$_UIAlertControllerCarBackgroundView$setCornerRadius$(id self, SEL _cmd, double arg1) {
    // Corner Radius:	(Approx "0 - 90" or "DELETE this to SHOW stock corners")
    arg1 = 35;
    _orig_ftt_meth_$_UIAlertControllerCarBackgroundView$setCornerRadius$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$_UIAlertControllerCollectionViewFlowLayout$hideSeparators(id self, SEL _cmd) {
    // Hide Separators:  True or False
    return 1;
}

static long long _patched_ftt_meth_$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInTitleLabel(id self, SEL _cmd) {
    // Max # Of Lines In Title 
    return 5;
}

static long long _patched_ftt_meth_$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInMessageLabel(id self, SEL _cmd) {
    // Max # Of Lines In Message
    return 1000;
}

static long long _patched_ftt_meth_$UIAlertControllerVisualStyleActionSheetCar$maximumNumberOfLinesInTitleLabel(id self, SEL _cmd) {
    // Max # Of Lines In Title (Action Sheet)
    return 5;
}

static bool _patched_ftt_meth_$_UIAlertControllerCollectionViewFlowLayout$shouldRoundFirstCell(id self, SEL _cmd) {
    // Combine First Cell:  True or False
    return 0;
}

static bool _patched_ftt_meth_$_UIAlertControllerView$showsCancelAction(id self, SEL _cmd) {
    // Show Cancel Button:  True or False
    return 0;
}

static void (*_orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$)(id, SEL, bool);
static void _patched_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$(id self, SEL _cmd, bool arg1) {
    // Merge Cancel Button:  Yes=False, No=True
    arg1 = 0;
    _orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UIAlertController$_canDismissWithGestureRecognizer(id self, SEL _cmd) {
    // Tap Outside To Dismiss:  ⚠️: True or False
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITraitCollection = objc_getClass("UITraitCollection");
    MSHookMessageEx(_ftt_class_UITraitCollection, @selector(userInterfaceIdiom), (IMP)_patched_ftt_meth_$UITraitCollection$userInterfaceIdiom, NULL);
    Class _ftt_class_UINavigationButton = objc_getClass("UINavigationButton");
    MSHookMessageEx(_ftt_class_UINavigationButton, @selector(_isExternalRoundedRectButton), (IMP)_patched_ftt_meth_$UINavigationButton$_isExternalRoundedRectButton, NULL);
    Class _ftt_class_UIAlertController = objc_getClass("UIAlertController");
    MSHookMessageEx(_ftt_class_UIAlertController, @selector(preferredStyle), (IMP)_patched_ftt_meth_$UIAlertController$preferredStyle, NULL);
    Class _ftt_class__UIAlertControllerCarBackgroundView = objc_getClass("_UIAlertControllerCarBackgroundView");
    MSHookMessageEx(_ftt_class__UIAlertControllerCarBackgroundView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$_UIAlertControllerCarBackgroundView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$_UIAlertControllerCarBackgroundView$setBackgroundColor$);
    MSHookMessageEx(_ftt_class__UIAlertControllerCarBackgroundView, @selector(setCornerRadius:), (IMP)_patched_ftt_meth_$_UIAlertControllerCarBackgroundView$setCornerRadius$, (IMP *)_orig_ftt_meth_$_UIAlertControllerCarBackgroundView$setCornerRadius$);
    Class _ftt_class__UIAlertControllerCollectionViewFlowLayout = objc_getClass("_UIAlertControllerCollectionViewFlowLayout");
    MSHookMessageEx(_ftt_class__UIAlertControllerCollectionViewFlowLayout, @selector(hideSeparators), (IMP)_patched_ftt_meth_$_UIAlertControllerCollectionViewFlowLayout$hideSeparators, NULL);
    Class _ftt_class_UIAlertControllerVisualStyleAlertCar = objc_getClass("UIAlertControllerVisualStyleAlertCar");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleAlertCar, @selector(maximumNumberOfLinesInTitleLabel), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInTitleLabel, NULL);
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleAlertCar, @selector(maximumNumberOfLinesInMessageLabel), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInMessageLabel, NULL);
    Class _ftt_class_UIAlertControllerVisualStyleActionSheetCar = objc_getClass("UIAlertControllerVisualStyleActionSheetCar");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleActionSheetCar, @selector(maximumNumberOfLinesInTitleLabel), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleActionSheetCar$maximumNumberOfLinesInTitleLabel, NULL);
    MSHookMessageEx(_ftt_class__UIAlertControllerCollectionViewFlowLayout, @selector(shouldRoundFirstCell), (IMP)_patched_ftt_meth_$_UIAlertControllerCollectionViewFlowLayout$shouldRoundFirstCell, NULL);
    Class _ftt_class__UIAlertControllerView = objc_getClass("_UIAlertControllerView");
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(showsCancelAction), (IMP)_patched_ftt_meth_$_UIAlertControllerView$showsCancelAction, NULL);
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(setCancelActionIsDiscrete:), (IMP)_patched_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$, (IMP *)_orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$);
    MSHookMessageEx(_ftt_class_UIAlertController, @selector(_canDismissWithGestureRecognizer), (IMP)_patched_ftt_meth_$UIAlertController$_canDismissWithGestureRecognizer, NULL);
}
