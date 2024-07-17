#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIStatusBar$_setDoubleHeightStatusString$)(id, SEL, id);
static void _patched_ftt_meth_$UIStatusBar$_setDoubleHeightStatusString$(id self, SEL _cmd, id arg1) {
    // Set Custom Text...
    arg1 = @"Flex 2";
    _orig_ftt_meth_$UIStatusBar$_setDoubleHeightStatusString$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBar = objc_getClass("UIStatusBar");
    MSHookMessageEx(_ftt_class_UIStatusBar, @selector(_setDoubleHeightStatusString:), (IMP)_patched_ftt_meth_$UIStatusBar$_setDoubleHeightStatusString$, (IMP *)_orig_ftt_meth_$UIStatusBar$_setDoubleHeightStatusString$);
}
