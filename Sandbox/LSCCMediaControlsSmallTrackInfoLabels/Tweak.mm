#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$MPUNowPlayingTitlesView$style(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUNowPlayingTitlesView = objc_getClass("MPUNowPlayingTitlesView");
    MSHookMessageEx(_ftt_class_MPUNowPlayingTitlesView, @selector(style), (IMP)_patched_ftt_meth_$MPUNowPlayingTitlesView$style, NULL);
}
