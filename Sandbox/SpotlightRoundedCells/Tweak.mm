#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$)(id, SEL, bool, bool);
static id _patched_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(id self, SEL _cmd, bool arg1, bool arg2) {
    arg1 = 1;
    arg2 = 1;
    return _orig_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(self, _cmd, arg1, arg2);
}

static bool _patched_ftt_meth_$UITableViewCell$_insetsBackground(id self, SEL _cmd) {
    return 1;
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$UITableView$setSeparatorStyle$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SearchUIRoundedView = objc_getClass("SearchUIRoundedView");
    MSHookMessageEx(_ftt_class_SearchUIRoundedView, @selector(imageWithCornersRoundedTop:roundedBottom:), (IMP)_patched_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$, (IMP *)_orig_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$);
    Class _ftt_class_UITableViewCell = objc_getClass("UITableViewCell");
    MSHookMessageEx(_ftt_class_UITableViewCell, @selector(_insetsBackground), (IMP)_patched_ftt_meth_$UITableViewCell$_insetsBackground, NULL);
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorStyle:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorStyle$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorStyle$);
}
