#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MPUNowPlayingTitlesView$setStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$MPUNowPlayingTitlesView$setStyle$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$MPUNowPlayingTitlesView$setStyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUNowPlayingTitlesView = objc_getClass("MPUNowPlayingTitlesView");
    MSHookMessageEx(_ftt_class_MPUNowPlayingTitlesView, @selector(setStyle:), (IMP)_patched_ftt_meth_$MPUNowPlayingTitlesView$setStyle$, (IMP *)_orig_ftt_meth_$MPUNowPlayingTitlesView$setStyle$);
}
