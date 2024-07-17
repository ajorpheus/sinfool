#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$TMOAccountInfo$mustShowAds(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$TMOAccountInfo$isPremiumBackgroundUnlocked(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$TMOAccountInfo$isPremiumRingtonePackUnlocked(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TMOAccountInfo = objc_getClass("TMOAccountInfo");
    MSHookMessageEx(_ftt_class_TMOAccountInfo, @selector(mustShowAds), (IMP)_patched_ftt_meth_$TMOAccountInfo$mustShowAds, NULL);
    MSHookMessageEx(_ftt_class_TMOAccountInfo, @selector(isPremiumBackgroundUnlocked), (IMP)_patched_ftt_meth_$TMOAccountInfo$isPremiumBackgroundUnlocked, NULL);
    MSHookMessageEx(_ftt_class_TMOAccountInfo, @selector(isPremiumRingtonePackUnlocked), (IMP)_patched_ftt_meth_$TMOAccountInfo$isPremiumRingtonePackUnlocked, NULL);
}
