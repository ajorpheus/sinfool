#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$iRate$shouldPromptForRating(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$SongCell$buyButton(id self, SEL _cmd) {
    return NULL;
}

static BOOL _patched_ftt_meth_$Configuration$isNoSkipLimitEnabled(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$Configuration$liveRadioVideoAdEnabled(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$Configuration$liveRadioCompanionAdEnabled(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$Configuration$customRadioVideoAdEnabled(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$Configuration$customRadioAudioAdEnabled(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$Configuration$customRadioCompanionAdEnabled(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$UIActivityIndicatorView$initWithActivityIndicatorStyle$(id self, SEL _cmd, int arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_iRate = objc_getClass("iRate");
    MSHookMessageEx(_ftt_class_iRate, @selector(shouldPromptForRating), (IMP)_patched_ftt_meth_$iRate$shouldPromptForRating, NULL);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_SongCell = objc_getClass("SongCell");
    MSHookMessageEx(_ftt_class_SongCell, @selector(buyButton), (IMP)_patched_ftt_meth_$SongCell$buyButton, NULL);
    Class _ftt_class_Configuration = objc_getClass("Configuration");
    MSHookMessageEx(_ftt_class_Configuration, @selector(isNoSkipLimitEnabled), (IMP)_patched_ftt_meth_$Configuration$isNoSkipLimitEnabled, NULL);
    MSHookMessageEx(_ftt_class_Configuration, @selector(liveRadioVideoAdEnabled), (IMP)_patched_ftt_meth_$Configuration$liveRadioVideoAdEnabled, NULL);
    MSHookMessageEx(_ftt_class_Configuration, @selector(liveRadioCompanionAdEnabled), (IMP)_patched_ftt_meth_$Configuration$liveRadioCompanionAdEnabled, NULL);
    MSHookMessageEx(_ftt_class_Configuration, @selector(customRadioVideoAdEnabled), (IMP)_patched_ftt_meth_$Configuration$customRadioVideoAdEnabled, NULL);
    MSHookMessageEx(_ftt_class_Configuration, @selector(customRadioAudioAdEnabled), (IMP)_patched_ftt_meth_$Configuration$customRadioAudioAdEnabled, NULL);
    MSHookMessageEx(_ftt_class_Configuration, @selector(customRadioCompanionAdEnabled), (IMP)_patched_ftt_meth_$Configuration$customRadioCompanionAdEnabled, NULL);
    Class _ftt_class_UIActivityIndicatorView = objc_getClass("UIActivityIndicatorView");
    MSHookMessageEx(_ftt_class_UIActivityIndicatorView, @selector(initWithActivityIndicatorStyle:), (IMP)_patched_ftt_meth_$UIActivityIndicatorView$initWithActivityIndicatorStyle$, NULL);
}
