#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUAssetViewModel$wantsIrisBadgeVisible(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUAssetViewModel = objc_getClass("PUAssetViewModel");
    MSHookMessageEx(_ftt_class_PUAssetViewModel, @selector(wantsIrisBadgeVisible), (IMP)_patched_ftt_meth_$PUAssetViewModel$wantsIrisBadgeVisible, NULL);
}
