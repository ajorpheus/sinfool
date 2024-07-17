#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBIconView$setAllowJitter$)(id, SEL, bool);
static void _patched_ftt_meth_$SBIconView$setAllowJitter$(id self, SEL _cmd, bool arg1) {
    // ⚠️ Shakes App Opening Animation (DELETE THIS UNIT TO DISABLE)
    arg1 = 1;
    _orig_ftt_meth_$SBIconView$setAllowJitter$(self, _cmd, arg1);
}

static BOOL _patched_ftt_meth_$SBIconController$isEditing(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$SBIconController$allowsUninstall(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$SBIconView$allowsTapWhileEditing(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$SBFolderIconView$allowsTapWhileEditing(id self, SEL _cmd) {
    return 1;
}

static void (*_orig_ftt_meth_$SBFolderTitleTextField$setShowsEditUI$animated$)(id, SEL, BOOL, BOOL);
static void _patched_ftt_meth_$SBFolderTitleTextField$setShowsEditUI$animated$(id self, SEL _cmd, BOOL arg1, BOOL arg2) {
    arg1 = 0;
    arg2 = 0;
    _orig_ftt_meth_$SBFolderTitleTextField$setShowsEditUI$animated$(self, _cmd, arg1, arg2);
}

static bool _patched_ftt_meth_$SBFolder$canEditDisplayName(id self, SEL _cmd) {
    return 0;
}

static id (*_orig_ftt_meth_$SBFolderIcon$_miniIconGridForPage$)(id, SEL, long long);
static id _patched_ftt_meth_$SBFolderIcon$_miniIconGridForPage$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    return _orig_ftt_meth_$SBFolderIcon$_miniIconGridForPage$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBFolderView$setCurrentPageIndex$animated$(id self, SEL _cmd, long long arg1, bool arg2) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconView = objc_getClass("SBIconView");
    MSHookMessageEx(_ftt_class_SBIconView, @selector(setAllowJitter:), (IMP)_patched_ftt_meth_$SBIconView$setAllowJitter$, (IMP *)_orig_ftt_meth_$SBIconView$setAllowJitter$);
    Class _ftt_class_SBIconController = objc_getClass("SBIconController");
    MSHookMessageEx(_ftt_class_SBIconController, @selector(isEditing), (IMP)_patched_ftt_meth_$SBIconController$isEditing, NULL);
    MSHookMessageEx(_ftt_class_SBIconController, @selector(allowsUninstall), (IMP)_patched_ftt_meth_$SBIconController$allowsUninstall, NULL);
    MSHookMessageEx(_ftt_class_SBIconView, @selector(allowsTapWhileEditing), (IMP)_patched_ftt_meth_$SBIconView$allowsTapWhileEditing, NULL);
    Class _ftt_class_SBFolderIconView = objc_getClass("SBFolderIconView");
    MSHookMessageEx(_ftt_class_SBFolderIconView, @selector(allowsTapWhileEditing), (IMP)_patched_ftt_meth_$SBFolderIconView$allowsTapWhileEditing, NULL);
    Class _ftt_class_SBFolderTitleTextField = objc_getClass("SBFolderTitleTextField");
    MSHookMessageEx(_ftt_class_SBFolderTitleTextField, @selector(setShowsEditUI:animated:), (IMP)_patched_ftt_meth_$SBFolderTitleTextField$setShowsEditUI$animated$, (IMP *)_orig_ftt_meth_$SBFolderTitleTextField$setShowsEditUI$animated$);
    Class _ftt_class_SBFolder = objc_getClass("SBFolder");
    MSHookMessageEx(_ftt_class_SBFolder, @selector(canEditDisplayName), (IMP)_patched_ftt_meth_$SBFolder$canEditDisplayName, NULL);
    Class _ftt_class_SBFolderIcon = objc_getClass("SBFolderIcon");
    MSHookMessageEx(_ftt_class_SBFolderIcon, @selector(_miniIconGridForPage:), (IMP)_patched_ftt_meth_$SBFolderIcon$_miniIconGridForPage$, (IMP *)_orig_ftt_meth_$SBFolderIcon$_miniIconGridForPage$);
    Class _ftt_class_SBFolderView = objc_getClass("SBFolderView");
    MSHookMessageEx(_ftt_class_SBFolderView, @selector(setCurrentPageIndex:animated:), (IMP)_patched_ftt_meth_$SBFolderView$setCurrentPageIndex$animated$, NULL);
}
