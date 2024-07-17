#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBAppSwitcherSettings$deckSwitcherForegroundWallpaperStyle(id self, SEL _cmd) {
    // Set Style As Per Glossary Above...
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings");
    MSHookMessageEx(_ftt_class_SBAppSwitcherSettings, @selector(deckSwitcherForegroundWallpaperStyle), (IMP)_patched_ftt_meth_$SBAppSwitcherSettings$deckSwitcherForegroundWallpaperStyle, NULL);
}
