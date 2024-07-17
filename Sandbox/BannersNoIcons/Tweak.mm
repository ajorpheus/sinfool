#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBBulletinBannerItem$iconImage(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBBulletinBannerItem = objc_getClass("SBBulletinBannerItem");
    MSHookMessageEx(_ftt_class_SBBulletinBannerItem, @selector(iconImage), (IMP)_patched_ftt_meth_$SBBulletinBannerItem$iconImage, NULL);
}
