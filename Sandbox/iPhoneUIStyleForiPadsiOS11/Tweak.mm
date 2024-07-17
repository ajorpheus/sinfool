#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CAMViewfinderViewController$_setLayoutStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$CAMViewfinderViewController$_setLayoutStyle$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$CAMViewfinderViewController$_setLayoutStyle$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isLiveFilteringSupported(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController");
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_setLayoutStyle:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_setLayoutStyle$, (IMP *)_orig_ftt_meth_$CAMViewfinderViewController$_setLayoutStyle$);
    Class _ftt_class_CAMCaptureCapabilities = objc_getClass("CAMCaptureCapabilities");
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isLiveFilteringSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isLiveFilteringSupported, NULL);
}
