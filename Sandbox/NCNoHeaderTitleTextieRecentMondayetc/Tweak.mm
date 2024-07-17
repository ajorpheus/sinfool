#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$NCNotificationListSectionHeaderView$setTitle$forSectionIdentifier$)(id, SEL, id, id);
static void _patched_ftt_meth_$NCNotificationListSectionHeaderView$setTitle$forSectionIdentifier$(id self, SEL _cmd, id arg1, id arg2) {
    arg1 = @" ";
    _orig_ftt_meth_$NCNotificationListSectionHeaderView$setTitle$forSectionIdentifier$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCNotificationListSectionHeaderView = objc_getClass("NCNotificationListSectionHeaderView");
    MSHookMessageEx(_ftt_class_NCNotificationListSectionHeaderView, @selector(setTitle:forSectionIdentifier:), (IMP)_patched_ftt_meth_$NCNotificationListSectionHeaderView$setTitle$forSectionIdentifier$, (IMP *)_orig_ftt_meth_$NCNotificationListSectionHeaderView$setTitle$forSectionIdentifier$);
}
