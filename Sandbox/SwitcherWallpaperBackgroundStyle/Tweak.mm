#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBAppSwitcherSettings$deckSwitcherBackgroundWallpaperStyle(id self, SEL _cmd) {
    // Set Style As Per Glossary Above...
    return 2;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings");
    MSHookMessageEx(_ftt_class_SBAppSwitcherSettings, @selector(deckSwitcherBackgroundWallpaperStyle), (IMP)_patched_ftt_meth_$SBAppSwitcherSettings$deckSwitcherBackgroundWallpaperStyle, NULL);
}
