#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class CCUINightShiftContentView; @class CCUIAirStuffSectionController; @class CCUIControlCenterVisualEffect; 
static id (*_logos_orig$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor)(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterVisualEffect* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterVisualEffect* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIAirStuffSectionController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIAirStuffSectionController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUINightShiftContentView$_selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUINightShiftContentView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUINightShiftContentView$_selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUINightShiftContentView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterVisualEffect* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIAirStuffSectionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUINightShiftContentView$_selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUINightShiftContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIControlCenterVisualEffect = objc_getClass("CCUIControlCenterVisualEffect"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIControlCenterVisualEffect, @selector(contentsMultiplyColor), (IMP)&_logos_method$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor, (IMP*)&_logos_orig$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor);}Class _logos_class$_ungrouped$CCUIAirStuffSectionController = objc_getClass("CCUIAirStuffSectionController"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIAirStuffSectionController, @selector(_selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor);}Class _logos_class$_ungrouped$CCUINightShiftContentView = objc_getClass("CCUINightShiftContentView"); { MSHookMessageEx(_logos_class$_ungrouped$CCUINightShiftContentView, @selector(_selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUINightShiftContentView$_selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUINightShiftContentView$_selectedStateColor);}} }
#line 24 "Tweak.xm"
