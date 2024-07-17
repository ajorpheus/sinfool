#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$GPMServiceConfiguration$canShowYouTube(id self, SEL _cmd) {
    // Show YouTube
    return 0;
}

static void (*_orig_ftt_meth_$PlayerViewContentView$animateYouTubeViewsOn$)(id, SEL, bool);
static void _patched_ftt_meth_$PlayerViewContentView$animateYouTubeViewsOn$(id self, SEL _cmd, bool arg1) {
    // Stop YouTube Button Animation
    arg1 = 1;
    _orig_ftt_meth_$PlayerViewContentView$animateYouTubeViewsOn$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GPMServiceConfiguration = objc_getClass("GPMServiceConfiguration");
    MSHookMessageEx(_ftt_class_GPMServiceConfiguration, @selector(canShowYouTube), (IMP)_patched_ftt_meth_$GPMServiceConfiguration$canShowYouTube, NULL);
    Class _ftt_class_PlayerViewContentView = objc_getClass("PlayerViewContentView");
    MSHookMessageEx(_ftt_class_PlayerViewContentView, @selector(animateYouTubeViewsOn:), (IMP)_patched_ftt_meth_$PlayerViewContentView$animateYouTubeViewsOn$, (IMP *)_orig_ftt_meth_$PlayerViewContentView$animateYouTubeViewsOn$);
}
