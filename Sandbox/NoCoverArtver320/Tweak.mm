#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$NowPlayingTrackPageView$isCoverArtHidden(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NowPlayingTrackPageView = objc_getClass("NowPlayingTrackPageView");
    MSHookMessageEx(_ftt_class_NowPlayingTrackPageView, @selector(isCoverArtHidden), (IMP)_patched_ftt_meth_$NowPlayingTrackPageView$isCoverArtHidden, NULL);
}
