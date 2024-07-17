#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBDashBoardTodayViewController$backgroundStyle(id self, SEL _cmd) {
    // Set Style... (Blur=3, Light Blur=4, Dark Blur=5, Darker Blur=6, Darkest Blur=7)
    return 6;
}

static bool _patched_ftt_meth_$SBDashBoardViewController$isTransitioning(id self, SEL _cmd) {
    // Hide/Show Initial Scrolling Blur
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardTodayViewController = objc_getClass("SBDashBoardTodayViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardTodayViewController, @selector(backgroundStyle), (IMP)_patched_ftt_meth_$SBDashBoardTodayViewController$backgroundStyle, NULL);
    Class _ftt_class_SBDashBoardViewController = objc_getClass("SBDashBoardViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardViewController, @selector(isTransitioning), (IMP)_patched_ftt_meth_$SBDashBoardViewController$isTransitioning, NULL);
}
