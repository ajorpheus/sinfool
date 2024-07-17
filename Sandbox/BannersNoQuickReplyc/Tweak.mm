#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBBulletinBannerItem$pullDownNotification(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBBulletinBannerItem = objc_getClass("SBBulletinBannerItem");
    MSHookMessageEx(_ftt_class_SBBulletinBannerItem, @selector(pullDownNotification), (IMP)_patched_ftt_meth_$SBBulletinBannerItem$pullDownNotification, NULL);
}
