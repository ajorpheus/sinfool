#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$(id self, SEL _cmd, double arg1) {
    arg1 = 0.1;
    _orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$MTMaterialSettings$setCcWhiteOverlayAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$MTMaterialSettings$setCcWhiteOverlayAlpha$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$MTMaterialSettings$setCcWhiteOverlayAlpha$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$MTMaterialSettings$setCutOutOverlayAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$MTMaterialSettings$setCutOutOverlayAlpha$(id self, SEL _cmd, double arg1) {
    arg1 = 0.1;
    _orig_ftt_meth_$MTMaterialSettings$setCutOutOverlayAlpha$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$MTMaterialSettings$setCutOutOverlayWhite$)(id, SEL, double);
static void _patched_ftt_meth_$MTMaterialSettings$setCutOutOverlayWhite$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$MTMaterialSettings$setCutOutOverlayWhite$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCMaterialSettings = objc_getClass("NCMaterialSettings");
    MSHookMessageEx(_ftt_class_NCMaterialSettings, @selector(setCcWhiteOverlayAlpha:), (IMP)_patched_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$, (IMP *)_orig_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$);
    MSHookMessageEx(_ftt_class_NCMaterialSettings, @selector(setCutOutOverlayAlpha:), (IMP)_patched_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$, (IMP *)_orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$);
    MSHookMessageEx(_ftt_class_NCMaterialSettings, @selector(setCutOutOverlayWhite:), (IMP)_patched_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$, (IMP *)_orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$);
    Class _ftt_class_MTMaterialSettings = objc_getClass("MTMaterialSettings");
    MSHookMessageEx(_ftt_class_MTMaterialSettings, @selector(setCcWhiteOverlayAlpha:), (IMP)_patched_ftt_meth_$MTMaterialSettings$setCcWhiteOverlayAlpha$, (IMP *)_orig_ftt_meth_$MTMaterialSettings$setCcWhiteOverlayAlpha$);
    MSHookMessageEx(_ftt_class_MTMaterialSettings, @selector(setCutOutOverlayAlpha:), (IMP)_patched_ftt_meth_$MTMaterialSettings$setCutOutOverlayAlpha$, (IMP *)_orig_ftt_meth_$MTMaterialSettings$setCutOutOverlayAlpha$);
    MSHookMessageEx(_ftt_class_MTMaterialSettings, @selector(setCutOutOverlayWhite:), (IMP)_patched_ftt_meth_$MTMaterialSettings$setCutOutOverlayWhite$, (IMP *)_orig_ftt_meth_$MTMaterialSettings$setCutOutOverlayWhite$);
}
