#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$SBCenterIconZoomAnimator$_numberOfSignificantAnimations(id self, SEL _cmd) {
    // LS to HS - (Icon Zoom) via Slide To Unlock
    return 0;
}

static unsigned long long _patched_ftt_meth_$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations(id self, SEL _cmd) {
    // LS to HS - (Icon Zoom) via Touch ID/Passcode
    return 0;
}

static id _patched_ftt_meth_$SBUIAnimationLockScreenToAppZoomIn$initWithTransitionContextProvider$(id self, SEL _cmd, id arg1) {
    // LS to App - Zoom
    return NULL;
}

static id _patched_ftt_meth_$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$(id self, SEL _cmd, id arg1) {
    // HS to App - Zoom
    return NULL;
}

static unsigned long long _patched_ftt_meth_$SBFolderIconZoomAnimator$_numberOfSignificantAnimations(id self, SEL _cmd) {
    // HS to Folder - (Icon Zoom)
    return 0;
}

static id _patched_ftt_meth_$SBRootAnimationSettings$folderOpenSettings(id self, SEL _cmd) {
    // HS to Folder - Open Zoom	*[MUST USE w/ "HS to Folder - (Icon Zoom)"]
    return NULL;
}

static id _patched_ftt_meth_$SBRootAnimationSettings$folderCloseSettings(id self, SEL _cmd) {
    // Folder to HS - Close Zoom  *[MUST USE w/ "HS to Folder - (Icon Zoom)"]
    return NULL;
}

static id _patched_ftt_meth_$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(id self, SEL _cmd, id arg1) {
    // App to HS - Zoom
    return NULL;
}

static id _patched_ftt_meth_$SBUIAnimationDosidoTransitionController$_animationFactory(id self, SEL _cmd) {
    // App to App - Slide Animation (Breadcrumb/"Back to App"/LastApp)
    return NULL;
}

static id _patched_ftt_meth_$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(id self, SEL _cmd, id arg1, id arg2, bool arg3) {
    // Switcher - Dismiss/Zoom Down
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBCenterIconZoomAnimator = objc_getClass("SBCenterIconZoomAnimator");
    MSHookMessageEx(_ftt_class_SBCenterIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)_patched_ftt_meth_$SBCenterIconZoomAnimator$_numberOfSignificantAnimations, NULL);
    Class _ftt_class_SBCenterAppIconZoomAnimator = objc_getClass("SBCenterAppIconZoomAnimator");
    MSHookMessageEx(_ftt_class_SBCenterAppIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)_patched_ftt_meth_$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations, NULL);
    Class _ftt_class_SBUIAnimationLockScreenToAppZoomIn = objc_getClass("SBUIAnimationLockScreenToAppZoomIn");
    MSHookMessageEx(_ftt_class_SBUIAnimationLockScreenToAppZoomIn, @selector(initWithTransitionContextProvider:), (IMP)_patched_ftt_meth_$SBUIAnimationLockScreenToAppZoomIn$initWithTransitionContextProvider$, NULL);
    Class _ftt_class_SBUIAnimationZoomUpApp = objc_getClass("SBUIAnimationZoomUpApp");
    MSHookMessageEx(_ftt_class_SBUIAnimationZoomUpApp, @selector(initWithTransitionContextProvider:), (IMP)_patched_ftt_meth_$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$, NULL);
    Class _ftt_class_SBFolderIconZoomAnimator = objc_getClass("SBFolderIconZoomAnimator");
    MSHookMessageEx(_ftt_class_SBFolderIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)_patched_ftt_meth_$SBFolderIconZoomAnimator$_numberOfSignificantAnimations, NULL);
    Class _ftt_class_SBRootAnimationSettings = objc_getClass("SBRootAnimationSettings");
    MSHookMessageEx(_ftt_class_SBRootAnimationSettings, @selector(folderOpenSettings), (IMP)_patched_ftt_meth_$SBRootAnimationSettings$folderOpenSettings, NULL);
    MSHookMessageEx(_ftt_class_SBRootAnimationSettings, @selector(folderCloseSettings), (IMP)_patched_ftt_meth_$SBRootAnimationSettings$folderCloseSettings, NULL);
    Class _ftt_class_SBUIAnimationZoomDownApp = objc_getClass("SBUIAnimationZoomDownApp");
    MSHookMessageEx(_ftt_class_SBUIAnimationZoomDownApp, @selector(initWithTransitionContextProvider:), (IMP)_patched_ftt_meth_$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$, NULL);
    Class _ftt_class_SBUIAnimationDosidoTransitionController = objc_getClass("SBUIAnimationDosidoTransitionController");
    MSHookMessageEx(_ftt_class_SBUIAnimationDosidoTransitionController, @selector(_animationFactory), (IMP)_patched_ftt_meth_$SBUIAnimationDosidoTransitionController$_animationFactory, NULL);
    Class _ftt_class_SBUIDismissSwitcherAnimationController = objc_getClass("SBUIDismissSwitcherAnimationController");
    MSHookMessageEx(_ftt_class_SBUIDismissSwitcherAnimationController, @selector(initWithTransitionContextProvider:activatingDisplayItem:interactive:), (IMP)_patched_ftt_meth_$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$, NULL);
}
