#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UITableViewCell$_isPigglyWigglyCell(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITableViewCell = objc_getClass("UITableViewCell");
    MSHookMessageEx(_ftt_class_UITableViewCell, @selector(_isPigglyWigglyCell), (IMP)_patched_ftt_meth_$UITableViewCell$_isPigglyWigglyCell, NULL);
}
