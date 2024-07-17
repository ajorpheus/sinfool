#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBIconController$openFolderIcon$animated$withCompletion$)(id, SEL, id, bool, id);
static void _patched_ftt_meth_$SBIconController$openFolderIcon$animated$withCompletion$(id self, SEL _cmd, id arg1, bool arg2, id arg3) {
    arg2 = 0;
    _orig_ftt_meth_$SBIconController$openFolderIcon$animated$withCompletion$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$SBIconController$closeFolderAnimated$withCompletion$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBIconController$closeFolderAnimated$withCompletion$(id self, SEL _cmd, bool arg1, id arg2) {
    arg1 = 0;
    _orig_ftt_meth_$SBIconController$closeFolderAnimated$withCompletion$(self, _cmd, arg1, arg2);
}

static id (*_orig_ftt_meth_$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$)(id, SEL, id, id, bool, bool);
static id _patched_ftt_meth_$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$(id self, SEL _cmd, id arg1, id arg2, bool arg3, bool arg4) {
    arg4 = 0;
    return _orig_ftt_meth_$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$(self, _cmd, arg1, arg2, arg3, arg4);
}

static void (*_orig_ftt_meth_$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$)(id, SEL, double, bool, bool, id);
static void _patched_ftt_meth_$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$(id self, SEL _cmd, double arg1, bool arg2, bool arg3, id arg4) {
    arg2 = 0;
    _orig_ftt_meth_$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$(self, _cmd, arg1, arg2, arg3, arg4);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconController = objc_getClass("SBIconController");
    MSHookMessageEx(_ftt_class_SBIconController, @selector(openFolderIcon:animated:withCompletion:), (IMP)_patched_ftt_meth_$SBIconController$openFolderIcon$animated$withCompletion$, (IMP *)_orig_ftt_meth_$SBIconController$openFolderIcon$animated$withCompletion$);
    MSHookMessageEx(_ftt_class_SBIconController, @selector(closeFolderAnimated:withCompletion:), (IMP)_patched_ftt_meth_$SBIconController$closeFolderAnimated$withCompletion$, (IMP *)_orig_ftt_meth_$SBIconController$closeFolderAnimated$withCompletion$);
    Class _ftt_class_SBFloatingDockViewController = objc_getClass("SBFloatingDockViewController");
    MSHookMessageEx(_ftt_class_SBFloatingDockViewController, @selector(folderPresentationController:animationControllerForTransitionWithFolder:presenting:animated:), (IMP)_patched_ftt_meth_$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$, (IMP *)_orig_ftt_meth_$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$);
    Class _ftt_class_SBFloatingDockRootViewController = objc_getClass("SBFloatingDockRootViewController");
    MSHookMessageEx(_ftt_class_SBFloatingDockRootViewController, @selector(_setPresentedProgress:animated:interactive:completion:), (IMP)_patched_ftt_meth_$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$, (IMP *)_orig_ftt_meth_$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$);
}
