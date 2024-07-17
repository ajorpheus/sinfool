#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$_UITableViewHeaderFooterContentView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UITableViewHeaderFooterContentView = objc_getClass("_UITableViewHeaderFooterContentView");
    MSHookMessageEx(_ftt_class__UITableViewHeaderFooterContentView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$_UITableViewHeaderFooterContentView$initWithFrame$, NULL);
}
