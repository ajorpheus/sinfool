#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PSBadgedTableCell$badgeWithInteger$)(id, SEL, long long);
static void _patched_ftt_meth_$PSBadgedTableCell$badgeWithInteger$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$PSBadgedTableCell$badgeWithInteger$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PSBadgedTableCell = objc_getClass("PSBadgedTableCell");
    MSHookMessageEx(_ftt_class_PSBadgedTableCell, @selector(badgeWithInteger:), (IMP)_patched_ftt_meth_$PSBadgedTableCell$badgeWithInteger$, (IMP *)_orig_ftt_meth_$PSBadgedTableCell$badgeWithInteger$);
}
