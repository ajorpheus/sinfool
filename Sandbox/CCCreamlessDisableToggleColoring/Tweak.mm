#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CCUIControlCenterVisualEffect$contentsMultiplyColor(id self, SEL _cmd) {
    // Highlight Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUIAirStuffSectionController$_selectedStateColor(id self, SEL _cmd) {
    // AirStuff Glyph Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUINightShiftContentView$_selectedStateColor(id self, SEL _cmd) {
    // Night Shift Glyph Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCUIControlCenterVisualEffect = objc_getClass("CCUIControlCenterVisualEffect");
    MSHookMessageEx(_ftt_class_CCUIControlCenterVisualEffect, @selector(contentsMultiplyColor), (IMP)_patched_ftt_meth_$CCUIControlCenterVisualEffect$contentsMultiplyColor, NULL);
    Class _ftt_class_CCUIAirStuffSectionController = objc_getClass("CCUIAirStuffSectionController");
    MSHookMessageEx(_ftt_class_CCUIAirStuffSectionController, @selector(_selectedStateColor), (IMP)_patched_ftt_meth_$CCUIAirStuffSectionController$_selectedStateColor, NULL);
    Class _ftt_class_CCUINightShiftContentView = objc_getClass("CCUINightShiftContentView");
    MSHookMessageEx(_ftt_class_CCUINightShiftContentView, @selector(_selectedStateColor), (IMP)_patched_ftt_meth_$CCUINightShiftContentView$_selectedStateColor, NULL);
}
