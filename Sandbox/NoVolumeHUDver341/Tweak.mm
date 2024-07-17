#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$FCVideoControlPanelView$setVolumeHidden$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$FCVideoControlPanelView$setVolumeHidden$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    // •
    arg1 = 1;
    _orig_ftt_meth_$FCVideoControlPanelView$setVolumeHidden$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FCVideoControlPanelView = objc_getClass("FCVideoControlPanelView");
    MSHookMessageEx(_ftt_class_FCVideoControlPanelView, @selector(setVolumeHidden:animated:), (IMP)_patched_ftt_meth_$FCVideoControlPanelView$setVolumeHidden$animated$, (IMP *)_orig_ftt_meth_$FCVideoControlPanelView$setVolumeHidden$animated$);
}
