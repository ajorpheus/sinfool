#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$MPUNowPlayingController$currentNowPlayingArtwork(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUNowPlayingController = objc_getClass("MPUNowPlayingController");
    MSHookMessageEx(_ftt_class_MPUNowPlayingController, @selector(currentNowPlayingArtwork), (IMP)_patched_ftt_meth_$MPUNowPlayingController$currentNowPlayingArtwork, NULL);
}
