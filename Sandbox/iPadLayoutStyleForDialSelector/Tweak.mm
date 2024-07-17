#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$CAMViewfinderViewController$_topBarBackgroundStyleForMode$(id self, SEL _cmd, long long arg1) {
    // Top Bar BG Style: (Dark Tint=0, Transparent=1, Black=2)
    return 1;
}

static long long _patched_ftt_meth_$CAMViewfinderViewController$_bottomBarBackgroundStyleForMode$(id self, SEL _cmd, long long arg1) {
    // Bottom Bar BG Style: (Dark Tint=0, Transparent=1, Black=2)
    return 1;
}

static void (*_orig_ftt_meth_$CAMModeDial$setLayoutStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$CAMModeDial$setLayoutStyle$(id self, SEL _cmd, long long arg1) {
    // Dial Style: (iPhone=0, iPad=1)
    arg1 = 1;
    _orig_ftt_meth_$CAMModeDial$setLayoutStyle$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CAMFlipButton$setLayoutStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$CAMFlipButton$setLayoutStyle$(id self, SEL _cmd, long long arg1) {
    // Flip Button Style: (Outline=0, Circle=1, Solid=2)
    arg1 = 2;
    _orig_ftt_meth_$CAMFlipButton$setLayoutStyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController");
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_topBarBackgroundStyleForMode:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_topBarBackgroundStyleForMode$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_bottomBarBackgroundStyleForMode:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_bottomBarBackgroundStyleForMode$, NULL);
    Class _ftt_class_CAMModeDial = objc_getClass("CAMModeDial");
    MSHookMessageEx(_ftt_class_CAMModeDial, @selector(setLayoutStyle:), (IMP)_patched_ftt_meth_$CAMModeDial$setLayoutStyle$, (IMP *)_orig_ftt_meth_$CAMModeDial$setLayoutStyle$);
    Class _ftt_class_CAMFlipButton = objc_getClass("CAMFlipButton");
    MSHookMessageEx(_ftt_class_CAMFlipButton, @selector(setLayoutStyle:), (IMP)_patched_ftt_meth_$CAMFlipButton$setLayoutStyle$, (IMP *)_orig_ftt_meth_$CAMFlipButton$setLayoutStyle$);
}
