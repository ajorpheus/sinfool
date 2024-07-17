#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBSearchBackdropView$useHighQualityGraphics(id self, SEL _cmd) {
    // High Quality Graphics
    return 0;
}

static id _patched_ftt_meth_$SBSearchBlurEffectView$init(id self, SEL _cmd) {
    // Minus Page - No Blur
    return NULL;
}

static void (*_orig_ftt_meth_$SBSearchBackdropView$setTransitionProgress$)(id, SEL, double);
static void _patched_ftt_meth_$SBSearchBackdropView$setTransitionProgress$(id self, SEL _cmd, double arg1) {
    // HS Page - Blur Transition (0.0-1.0) [Requires HQ Graphics Enabled]
    arg1 = 0.95;
    _orig_ftt_meth_$SBSearchBackdropView$setTransitionProgress$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SearchUIRoundedView$updateCornersRoundTop$roundBottom$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$SearchUIRoundedView$updateCornersRoundTop$roundBottom$(id self, SEL _cmd, bool arg1, bool arg2) {
    // Sections - No Background
    arg1 = 1;
    arg2 = 1;
    _orig_ftt_meth_$SearchUIRoundedView$updateCornersRoundTop$roundBottom$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SearchUIRoundedView$setColor$)(id, SEL, id);
static void _patched_ftt_meth_$SearchUIRoundedView$setColor$(id self, SEL _cmd, id arg1) {
    // Sections - Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:28/255.0];
    _orig_ftt_meth_$SearchUIRoundedView$setColor$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$)(id, SEL, bool, bool);
static id _patched_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(id self, SEL _cmd, bool arg1, bool arg2) {
    // Sections - Rounded Corners
    arg1 = 1;
    arg2 = 1;
    return _orig_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$(self, _cmd, arg1, arg2);
}

static bool _patched_ftt_meth_$UITableViewCell$_insetsBackground(id self, SEL _cmd) {
    // Sections - Adds Space In Between
    return 0;
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$UITableView$setSeparatorStyle$(id self, SEL _cmd, long long arg1) {
    // Sections - No Separators
    arg1 = 0;
    _orig_ftt_meth_$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SPUISearchViewController$shouldShowMoreButtonForSection$(id self, SEL _cmd, unsigned long long arg1) {
    // Sections - More Button
    return 0;
}

static void (*_orig_ftt_meth_$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$)(id, SEL, id, unsigned long long, bool);
static void _patched_ftt_meth_$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$(id self, SEL _cmd, id arg1, unsigned long long arg2, bool arg3) {
    // Sections - Title Label
    arg3 = 1;
    _orig_ftt_meth_$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$(self, _cmd, arg1, arg2, arg3);
}

static bool _patched_ftt_meth_$SPUISearchTableView$sectionIsExpanded$(id self, SEL _cmd, long long arg1) {
    // Sections - Expanded
    return 1;
}

static void (*_orig_ftt_meth_$SPUISearchViewController$setClearSearchTimeInterval$)(id, SEL, double);
static void _patched_ftt_meth_$SPUISearchViewController$setClearSearchTimeInterval$(id self, SEL _cmd, double arg1) {
    // Search Bar - Seconds Before Clearing Search On Dismiss
    arg1 = 0;
    _orig_ftt_meth_$SPUISearchViewController$setClearSearchTimeInterval$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchBackdropView = objc_getClass("SBSearchBackdropView");
    MSHookMessageEx(_ftt_class_SBSearchBackdropView, @selector(useHighQualityGraphics), (IMP)_patched_ftt_meth_$SBSearchBackdropView$useHighQualityGraphics, NULL);
    Class _ftt_class_SBSearchBlurEffectView = objc_getClass("SBSearchBlurEffectView");
    MSHookMessageEx(_ftt_class_SBSearchBlurEffectView, @selector(init), (IMP)_patched_ftt_meth_$SBSearchBlurEffectView$init, NULL);
    MSHookMessageEx(_ftt_class_SBSearchBackdropView, @selector(setTransitionProgress:), (IMP)_patched_ftt_meth_$SBSearchBackdropView$setTransitionProgress$, (IMP *)_orig_ftt_meth_$SBSearchBackdropView$setTransitionProgress$);
    Class _ftt_class_SearchUIRoundedView = objc_getClass("SearchUIRoundedView");
    MSHookMessageEx(_ftt_class_SearchUIRoundedView, @selector(updateCornersRoundTop:roundBottom:), (IMP)_patched_ftt_meth_$SearchUIRoundedView$updateCornersRoundTop$roundBottom$, (IMP *)_orig_ftt_meth_$SearchUIRoundedView$updateCornersRoundTop$roundBottom$);
    MSHookMessageEx(_ftt_class_SearchUIRoundedView, @selector(setColor:), (IMP)_patched_ftt_meth_$SearchUIRoundedView$setColor$, (IMP *)_orig_ftt_meth_$SearchUIRoundedView$setColor$);
    MSHookMessageEx(_ftt_class_SearchUIRoundedView, @selector(imageWithCornersRoundedTop:roundedBottom:), (IMP)_patched_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$, (IMP *)_orig_ftt_meth_$SearchUIRoundedView$imageWithCornersRoundedTop$roundedBottom$);
    Class _ftt_class_UITableViewCell = objc_getClass("UITableViewCell");
    MSHookMessageEx(_ftt_class_UITableViewCell, @selector(_insetsBackground), (IMP)_patched_ftt_meth_$UITableViewCell$_insetsBackground, NULL);
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorStyle:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorStyle$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorStyle$);
    Class _ftt_class_SPUISearchViewController = objc_getClass("SPUISearchViewController");
    MSHookMessageEx(_ftt_class_SPUISearchViewController, @selector(shouldShowMoreButtonForSection:), (IMP)_patched_ftt_meth_$SPUISearchViewController$shouldShowMoreButtonForSection$, NULL);
    Class _ftt_class_SPUISearchTableHeaderView = objc_getClass("SPUISearchTableHeaderView");
    MSHookMessageEx(_ftt_class_SPUISearchTableHeaderView, @selector(updateWithTitle:section:isExpanded:), (IMP)_patched_ftt_meth_$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$, (IMP *)_orig_ftt_meth_$SPUISearchTableHeaderView$updateWithTitle$section$isExpanded$);
    Class _ftt_class_SPUISearchTableView = objc_getClass("SPUISearchTableView");
    MSHookMessageEx(_ftt_class_SPUISearchTableView, @selector(sectionIsExpanded:), (IMP)_patched_ftt_meth_$SPUISearchTableView$sectionIsExpanded$, NULL);
    MSHookMessageEx(_ftt_class_SPUISearchViewController, @selector(setClearSearchTimeInterval:), (IMP)_patched_ftt_meth_$SPUISearchViewController$setClearSearchTimeInterval$, (IMP *)_orig_ftt_meth_$SPUISearchViewController$setClearSearchTimeInterval$);
}
