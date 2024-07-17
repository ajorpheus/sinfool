#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$UITableView$sectionHeaderHeight(id self, SEL _cmd) {
    // Top Section Gap: (Show=P, Hide=0)
    return 0;
}

static double _patched_ftt_meth_$UITableView$sectionFooterHeight(id self, SEL _cmd) {
    // Bottom Section Gap: (Show=P, Hide=0)
    return 0;
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$UITableView$setSeparatorStyle$(id self, SEL _cmd, long long arg1) {
    // Separators: (Hide=0, Show=1)
    arg1 = 0;
    _orig_ftt_meth_$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UITableView$_shouldDrawSeparatorAtTopOfSection$(id self, SEL _cmd, long long arg1) {
    // Top Separators: (Show=P, Hide=F)
    return 0;
}

static int _patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$sectionLocation(id self, SEL _cmd) {
    // Cell Corners: (Round=0, Square=1, Round Top=2, Round Bottom=3, Default=P)
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(sectionHeaderHeight), (IMP)_patched_ftt_meth_$UITableView$sectionHeaderHeight, NULL);
    MSHookMessageEx(_ftt_class_UITableView, @selector(sectionFooterHeight), (IMP)_patched_ftt_meth_$UITableView$sectionFooterHeight, NULL);
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorStyle:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorStyle$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorStyle$);
    MSHookMessageEx(_ftt_class_UITableView, @selector(_shouldDrawSeparatorAtTopOfSection:), (IMP)_patched_ftt_meth_$UITableView$_shouldDrawSeparatorAtTopOfSection$, NULL);
    Class _ftt_class__UIGroupTableViewCellBackgroundImageKey = objc_getClass("_UIGroupTableViewCellBackgroundImageKey");
    MSHookMessageEx(_ftt_class__UIGroupTableViewCellBackgroundImageKey, @selector(sectionLocation), (IMP)_patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$sectionLocation, NULL);
}
