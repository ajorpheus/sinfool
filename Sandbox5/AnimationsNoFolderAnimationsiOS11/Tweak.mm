#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class SBIconController; @class SBFloatingDockViewController; @class SBFloatingDockRootViewController; 
static void (*_logos_orig$_ungrouped$SBIconController$openFolderIcon$animated$withCompletion$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id, bool, id); static void _logos_method$_ungrouped$SBIconController$openFolderIcon$animated$withCompletion$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id, bool, id); static void (*_logos_orig$_ungrouped$SBIconController$closeFolderAnimated$withCompletion$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$SBIconController$closeFolderAnimated$withCompletion$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, bool, id); static id (*_logos_orig$_ungrouped$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$)(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockViewController* _LOGOS_SELF_CONST, SEL, id, id, bool, bool); static id _logos_method$_ungrouped$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockViewController* _LOGOS_SELF_CONST, SEL, id, id, bool, bool); static void (*_logos_orig$_ungrouped$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$)(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockRootViewController* _LOGOS_SELF_CONST, SEL, double, bool, bool, id); static void _logos_method$_ungrouped$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockRootViewController* _LOGOS_SELF_CONST, SEL, double, bool, bool, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBIconController$openFolderIcon$animated$withCompletion$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, bool arg2, id arg3) {
    arg2 = 0;
    _logos_orig$_ungrouped$SBIconController$openFolderIcon$animated$withCompletion$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$SBIconController$closeFolderAnimated$withCompletion$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBIconController$closeFolderAnimated$withCompletion$(self, _cmd, arg1, arg2);
}



static id _logos_method$_ungrouped$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3, bool arg4) {
    arg4 = 0;
    return _logos_orig$_ungrouped$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$(self, _cmd, arg1, arg2, arg3, arg4);
}



static void _logos_method$_ungrouped$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockRootViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1, bool arg2, bool arg3, id arg4) {
    arg2 = 0;
    _logos_orig$_ungrouped$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$(self, _cmd, arg1, arg2, arg3, arg4);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconController = objc_getClass("SBIconController"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(openFolderIcon:animated:withCompletion:), (IMP)&_logos_method$_ungrouped$SBIconController$openFolderIcon$animated$withCompletion$, (IMP*)&_logos_orig$_ungrouped$SBIconController$openFolderIcon$animated$withCompletion$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(closeFolderAnimated:withCompletion:), (IMP)&_logos_method$_ungrouped$SBIconController$closeFolderAnimated$withCompletion$, (IMP*)&_logos_orig$_ungrouped$SBIconController$closeFolderAnimated$withCompletion$);}Class _logos_class$_ungrouped$SBFloatingDockViewController = objc_getClass("SBFloatingDockViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBFloatingDockViewController, @selector(folderPresentationController:animationControllerForTransitionWithFolder:presenting:animated:), (IMP)&_logos_method$_ungrouped$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$, (IMP*)&_logos_orig$_ungrouped$SBFloatingDockViewController$folderPresentationController$animationControllerForTransitionWithFolder$presenting$animated$);}Class _logos_class$_ungrouped$SBFloatingDockRootViewController = objc_getClass("SBFloatingDockRootViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBFloatingDockRootViewController, @selector(_setPresentedProgress:animated:interactive:completion:), (IMP)&_logos_method$_ungrouped$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$, (IMP*)&_logos_orig$_ungrouped$SBFloatingDockRootViewController$_setPresentedProgress$animated$interactive$completion$);}} }
#line 31 "Tweak.xm"
