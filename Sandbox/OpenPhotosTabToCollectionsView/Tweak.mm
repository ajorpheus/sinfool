#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUGridZoomLevelInfo$wantsAutomaticContentOffsetAdjustment(id self, SEL _cmd) {
    // Open Collections At Bottom: (Yes=F, Stock=P)
    return 0;
}

static unsigned long long _patched_ftt_meth_$PUMomentsZoomLevelManager$preferredDefaultZoomLevel(id self, SEL _cmd) {
    return 2;
}

static int _patched_ftt_meth_$PUTabbedLibraryViewController$_contentModeForNavigationController$(id self, SEL _cmd, id arg1) {
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUGridZoomLevelInfo = objc_getClass("PUGridZoomLevelInfo");
    MSHookMessageEx(_ftt_class_PUGridZoomLevelInfo, @selector(wantsAutomaticContentOffsetAdjustment), (IMP)_patched_ftt_meth_$PUGridZoomLevelInfo$wantsAutomaticContentOffsetAdjustment, NULL);
    Class _ftt_class_PUMomentsZoomLevelManager = objc_getClass("PUMomentsZoomLevelManager");
    MSHookMessageEx(_ftt_class_PUMomentsZoomLevelManager, @selector(preferredDefaultZoomLevel), (IMP)_patched_ftt_meth_$PUMomentsZoomLevelManager$preferredDefaultZoomLevel, NULL);
    Class _ftt_class_PUTabbedLibraryViewController = objc_getClass("PUTabbedLibraryViewController");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewController, @selector(_contentModeForNavigationController:), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewController$_contentModeForNavigationController$, NULL);
}
