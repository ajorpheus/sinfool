#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDefaultBannerView$_showAttachmentPreview(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDefaultBannerView = objc_getClass("SBDefaultBannerView");
    MSHookMessageEx(_ftt_class_SBDefaultBannerView, @selector(_showAttachmentPreview), (IMP)_patched_ftt_meth_$SBDefaultBannerView$_showAttachmentPreview, NULL);
}
