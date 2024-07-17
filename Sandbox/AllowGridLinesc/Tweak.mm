#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideGridViewForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController");
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideGridViewForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideGridViewForGraphConfiguration$, NULL);
}
