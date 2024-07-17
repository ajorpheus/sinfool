#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBAwayBulletinListItem$iconImage(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAwayBulletinListItem = objc_getClass("SBAwayBulletinListItem");
    MSHookMessageEx(_ftt_class_SBAwayBulletinListItem, @selector(iconImage), (IMP)_patched_ftt_meth_$SBAwayBulletinListItem$iconImage, NULL);
}
