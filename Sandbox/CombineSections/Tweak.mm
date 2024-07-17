#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UITableView$_delegateImplementsHeightForHeaderInSection(id self, SEL _cmd) {
    // Show Top Header Space
    return 0;
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$UITableView$setSeparatorStyle$(id self, SEL _cmd, long long arg1) {
    // Separators:  (Hide=0, Show=1)
    arg1 = 0;
    _orig_ftt_meth_$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UITableView$_shouldDrawSeparatorAtTopOfSection$(id self, SEL _cmd, long long arg1) {
    // Show Top Separator
    return 0;
}

static double _patched_ftt_meth_$UITableView$_defaultSectionHeaderHeight(id self, SEL _cmd) {
    return 0;
}

static double _patched_ftt_meth_$UITableView$_defaultSectionFooterHeight(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(_delegateImplementsHeightForHeaderInSection), (IMP)_patched_ftt_meth_$UITableView$_delegateImplementsHeightForHeaderInSection, NULL);
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorStyle:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorStyle$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorStyle$);
    MSHookMessageEx(_ftt_class_UITableView, @selector(_shouldDrawSeparatorAtTopOfSection:), (IMP)_patched_ftt_meth_$UITableView$_shouldDrawSeparatorAtTopOfSection$, NULL);
    MSHookMessageEx(_ftt_class_UITableView, @selector(_defaultSectionHeaderHeight), (IMP)_patched_ftt_meth_$UITableView$_defaultSectionHeaderHeight, NULL);
    MSHookMessageEx(_ftt_class_UITableView, @selector(_defaultSectionFooterHeight), (IMP)_patched_ftt_meth_$UITableView$_defaultSectionFooterHeight, NULL);
}
