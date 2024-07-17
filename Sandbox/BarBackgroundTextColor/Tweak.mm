#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MNGuidanceSignDistanceLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$MNGuidanceSignDistanceLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Distance Text
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$MNGuidanceSignDistanceLabel$setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$MNGuidanceSignInstructionsLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$MNGuidanceSignInstructionsLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Instructions Text
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$MNGuidanceSignInstructionsLabel$setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$MainChromeViewItem$setBlurColor$)(id, SEL, id);
static void _patched_ftt_meth_$MainChromeViewItem$setBlurColor$(id self, SEL _cmd, id arg1) {
    // Bar Background
    arg1 = [UIColor colorWithRed:72/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    _orig_ftt_meth_$MainChromeViewItem$setBlurColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MNGuidanceSignDistanceLabel = objc_getClass("MNGuidanceSignDistanceLabel");
    MSHookMessageEx(_ftt_class_MNGuidanceSignDistanceLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$MNGuidanceSignDistanceLabel$setTextColor$, (IMP *)_orig_ftt_meth_$MNGuidanceSignDistanceLabel$setTextColor$);
    Class _ftt_class_MNGuidanceSignInstructionsLabel = objc_getClass("MNGuidanceSignInstructionsLabel");
    MSHookMessageEx(_ftt_class_MNGuidanceSignInstructionsLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$MNGuidanceSignInstructionsLabel$setTextColor$, (IMP *)_orig_ftt_meth_$MNGuidanceSignInstructionsLabel$setTextColor$);
    Class _ftt_class_MainChromeViewItem = objc_getClass("MainChromeViewItem");
    MSHookMessageEx(_ftt_class_MainChromeViewItem, @selector(setBlurColor:), (IMP)_patched_ftt_meth_$MainChromeViewItem$setBlurColor$, (IMP *)_orig_ftt_meth_$MainChromeViewItem$setBlurColor$);
}
