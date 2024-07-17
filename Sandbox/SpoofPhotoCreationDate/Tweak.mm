#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PUPhotoBrowserTitleView$setCreationDate$)(id, SEL, id);
static void _patched_ftt_meth_$PUPhotoBrowserTitleView$setCreationDate$(id self, SEL _cmd, id arg1) {
    // Set Creation Date...
    arg1 = @"FLDate:1985-10-26T01:21:03-0400";
    _orig_ftt_meth_$PUPhotoBrowserTitleView$setCreationDate$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUPhotoBrowserTitleView = objc_getClass("PUPhotoBrowserTitleView");
    MSHookMessageEx(_ftt_class_PUPhotoBrowserTitleView, @selector(setCreationDate:), (IMP)_patched_ftt_meth_$PUPhotoBrowserTitleView$setCreationDate$, (IMP *)_orig_ftt_meth_$PUPhotoBrowserTitleView$setCreationDate$);
}
