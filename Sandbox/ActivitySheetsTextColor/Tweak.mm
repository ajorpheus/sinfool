#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$_UIActivityGroupListViewController$darkStyleOnLegacyApp(id self, SEL _cmd) {
    // AirDrop Text: (White=T, Black=P)
    return 1;
}

static bool _patched_ftt_meth_$UIActivityGroupViewController$darkStyleOnLegacyApp(id self, SEL _cmd) {
    // Group Items Text: (White=T, Black=P)
    return 1;
}

static void (*_orig_ftt_meth_$_UIActivityGroupActivityCellTitleLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UIActivityGroupActivityCellTitleLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Set Custom Group Items Text Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UIActivityGroupActivityCellTitleLabel$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIActivityGroupListViewController = objc_getClass("_UIActivityGroupListViewController");
    MSHookMessageEx(_ftt_class__UIActivityGroupListViewController, @selector(darkStyleOnLegacyApp), (IMP)_patched_ftt_meth_$_UIActivityGroupListViewController$darkStyleOnLegacyApp, NULL);
    Class _ftt_class_UIActivityGroupViewController = objc_getClass("UIActivityGroupViewController");
    MSHookMessageEx(_ftt_class_UIActivityGroupViewController, @selector(darkStyleOnLegacyApp), (IMP)_patched_ftt_meth_$UIActivityGroupViewController$darkStyleOnLegacyApp, NULL);
    Class _ftt_class__UIActivityGroupActivityCellTitleLabel = objc_getClass("_UIActivityGroupActivityCellTitleLabel");
    MSHookMessageEx(_ftt_class__UIActivityGroupActivityCellTitleLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$_UIActivityGroupActivityCellTitleLabel$setTextColor$, (IMP *)_orig_ftt_meth_$_UIActivityGroupActivityCellTitleLabel$setTextColor$);
}
