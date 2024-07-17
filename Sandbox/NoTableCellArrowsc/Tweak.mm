#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PSTableCell$setForceHideDisclosureIndicator$)(id, SEL, bool);
static void _patched_ftt_meth_$PSTableCell$setForceHideDisclosureIndicator$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$PSTableCell$setForceHideDisclosureIndicator$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$PSTableCell$forceHideDisclosureIndicator(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$UITableViewCell$_disclosureChevronImage$(id self, SEL _cmd, bool arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PSTableCell = objc_getClass("PSTableCell");
    MSHookMessageEx(_ftt_class_PSTableCell, @selector(setForceHideDisclosureIndicator:), (IMP)_patched_ftt_meth_$PSTableCell$setForceHideDisclosureIndicator$, (IMP *)_orig_ftt_meth_$PSTableCell$setForceHideDisclosureIndicator$);
    MSHookMessageEx(_ftt_class_PSTableCell, @selector(forceHideDisclosureIndicator), (IMP)_patched_ftt_meth_$PSTableCell$forceHideDisclosureIndicator, NULL);
    Class _ftt_class_UITableViewCell = objc_getClass("UITableViewCell");
    MSHookMessageEx(_ftt_class_UITableViewCell, @selector(_disclosureChevronImage:), (IMP)_patched_ftt_meth_$UITableViewCell$_disclosureChevronImage$, NULL);
}
