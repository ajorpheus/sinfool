#import <UIKit/UIKit.h>

#include <substrate.h>

static int _patched_ftt_meth_$SBAppSwitcherSettings$switcherStyle(id self, SEL _cmd) {
    return 2;
}

static void (*_orig_ftt_meth_$SBAppSwitcherSettings$setSwitcherStyle$)(id, SEL, int);
static void _patched_ftt_meth_$SBAppSwitcherSettings$setSwitcherStyle$(id self, SEL _cmd, int arg1) {
    arg1 = 2;
    _orig_ftt_meth_$SBAppSwitcherSettings$setSwitcherStyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings");
    MSHookMessageEx(_ftt_class_SBAppSwitcherSettings, @selector(switcherStyle), (IMP)_patched_ftt_meth_$SBAppSwitcherSettings$switcherStyle, NULL);
    MSHookMessageEx(_ftt_class_SBAppSwitcherSettings, @selector(setSwitcherStyle:), (IMP)_patched_ftt_meth_$SBAppSwitcherSettings$setSwitcherStyle$, (IMP *)_orig_ftt_meth_$SBAppSwitcherSettings$setSwitcherStyle$);
}
