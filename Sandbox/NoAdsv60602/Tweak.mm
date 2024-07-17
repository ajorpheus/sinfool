#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$FWVideoAdRenderer$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$FWVideoAdRenderer2$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$FWRendererController$_getSlotType(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$MMLSponsorshipManager$sponsors(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FWVideoAdRenderer = objc_getClass("FWVideoAdRenderer");
    MSHookMessageEx(_ftt_class_FWVideoAdRenderer, @selector(init), (IMP)_patched_ftt_meth_$FWVideoAdRenderer$init, NULL);
    Class _ftt_class_FWVideoAdRenderer2 = objc_getClass("FWVideoAdRenderer2");
    MSHookMessageEx(_ftt_class_FWVideoAdRenderer2, @selector(init), (IMP)_patched_ftt_meth_$FWVideoAdRenderer2$init, NULL);
    Class _ftt_class_FWRendererController = objc_getClass("FWRendererController");
    MSHookMessageEx(_ftt_class_FWRendererController, @selector(_getSlotType), (IMP)_patched_ftt_meth_$FWRendererController$_getSlotType, NULL);
    Class _ftt_class_MMLSponsorshipManager = objc_getClass("MMLSponsorshipManager");
    MSHookMessageEx(_ftt_class_MMLSponsorshipManager, @selector(sponsors), (IMP)_patched_ftt_meth_$MMLSponsorshipManager$sponsors, NULL);
}
