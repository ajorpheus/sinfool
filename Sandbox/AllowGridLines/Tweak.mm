#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideGridViewForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController");
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideGridViewForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideGridViewForMode$device$, NULL);
}
