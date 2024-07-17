#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$YTPromotedVideoCellController$shouldShowPromotedItems(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_YTPromotedVideoCellController = objc_getClass("YTPromotedVideoCellController");
    MSHookMessageEx(_ftt_class_YTPromotedVideoCellController, @selector(shouldShowPromotedItems), (IMP)_patched_ftt_meth_$YTPromotedVideoCellController$shouldShowPromotedItems, NULL);
}
