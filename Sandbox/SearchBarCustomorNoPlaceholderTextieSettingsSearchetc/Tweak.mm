#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UISearchBarTextFieldLabel$setText$)(id, SEL, id);
static void _patched_ftt_meth_$UISearchBarTextFieldLabel$setText$(id self, SEL _cmd, id arg1) {
    // Set Custom Text...
    arg1 = @" ";
    _orig_ftt_meth_$UISearchBarTextFieldLabel$setText$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UISearchBarTextFieldLabel = objc_getClass("UISearchBarTextFieldLabel");
    MSHookMessageEx(_ftt_class_UISearchBarTextFieldLabel, @selector(setText:), (IMP)_patched_ftt_meth_$UISearchBarTextFieldLabel$setText$, (IMP *)_orig_ftt_meth_$UISearchBarTextFieldLabel$setText$);
}
