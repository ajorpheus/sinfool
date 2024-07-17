#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$PlayController$initWithSession$adController$)(id, SEL, id, id);
static id _patched_ftt_meth_$PlayController$initWithSession$adController$(id self, SEL _cmd, id arg1, id arg2) {
    // No Ads
    arg2 = NULL;
    return _orig_ftt_meth_$PlayController$initWithSession$adController$(self, _cmd, arg1, arg2);
}

static id _patched_ftt_meth_$ShuffleFeatureImplementation$baseUI(id self, SEL _cmd) {
    // Disable Shuffle
    return NULL;
}

static BOOL _patched_ftt_meth_$SPTPlayerRestrictions$disallowSeeking(id self, SEL _cmd) {
    // Enable Scrubbing/Manual Skipping
    return 0;
}

static BOOL _patched_ftt_meth_$SPTPlayerRestrictions$disallowPeekingAtPreviousTrack(id self, SEL _cmd) {
    // Allow Peeking At Previous Track
    return 0;
}

static BOOL _patched_ftt_meth_$SPTPlayerRestrictions$disallowPeekingAtNextTrack(id self, SEL _cmd) {
    // Allow Peeking At Next Track
    return 0;
}

static id _patched_ftt_meth_$SPTPlayerRestrictions$disallowSkippingToPreviousTrackReasons(id self, SEL _cmd) {
    // Allow Switching Back To Previous Tracks/Album Views (Preferably After Skip Limit Is Reached)
    return NULL;
}

static id _patched_ftt_meth_$SPTPlayerRestrictions$disallowSkippingToNextTrackReasons(id self, SEL _cmd) {
    // Removes Skip Limit Message/Allows Peeking At Next Track After Skip Limit Is Reached
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PlayController = objc_getClass("PlayController");
    MSHookMessageEx(_ftt_class_PlayController, @selector(initWithSession:adController:), (IMP)_patched_ftt_meth_$PlayController$initWithSession$adController$, (IMP *)_orig_ftt_meth_$PlayController$initWithSession$adController$);
    Class _ftt_class_ShuffleFeatureImplementation = objc_getClass("ShuffleFeatureImplementation");
    MSHookMessageEx(_ftt_class_ShuffleFeatureImplementation, @selector(baseUI), (IMP)_patched_ftt_meth_$ShuffleFeatureImplementation$baseUI, NULL);
    Class _ftt_class_SPTPlayerRestrictions = objc_getClass("SPTPlayerRestrictions");
    MSHookMessageEx(_ftt_class_SPTPlayerRestrictions, @selector(disallowSeeking), (IMP)_patched_ftt_meth_$SPTPlayerRestrictions$disallowSeeking, NULL);
    MSHookMessageEx(_ftt_class_SPTPlayerRestrictions, @selector(disallowPeekingAtPreviousTrack), (IMP)_patched_ftt_meth_$SPTPlayerRestrictions$disallowPeekingAtPreviousTrack, NULL);
    MSHookMessageEx(_ftt_class_SPTPlayerRestrictions, @selector(disallowPeekingAtNextTrack), (IMP)_patched_ftt_meth_$SPTPlayerRestrictions$disallowPeekingAtNextTrack, NULL);
    MSHookMessageEx(_ftt_class_SPTPlayerRestrictions, @selector(disallowSkippingToPreviousTrackReasons), (IMP)_patched_ftt_meth_$SPTPlayerRestrictions$disallowSkippingToPreviousTrackReasons, NULL);
    MSHookMessageEx(_ftt_class_SPTPlayerRestrictions, @selector(disallowSkippingToNextTrackReasons), (IMP)_patched_ftt_meth_$SPTPlayerRestrictions$disallowSkippingToNextTrackReasons, NULL);
}
