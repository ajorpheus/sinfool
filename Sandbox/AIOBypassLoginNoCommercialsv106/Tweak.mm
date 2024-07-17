#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$FWAd$adId(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$CCTVEManager$videoIsAuthorized$(id self, SEL _cmd, id arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(adId), (IMP)_patched_ftt_meth_$FWAd$adId, NULL);
    Class _ftt_class_CCTVEManager = objc_getClass("CCTVEManager");
    MSHookMessageEx(_ftt_class_CCTVEManager, @selector(videoIsAuthorized:), (IMP)_patched_ftt_meth_$CCTVEManager$videoIsAuthorized$, NULL);
}
