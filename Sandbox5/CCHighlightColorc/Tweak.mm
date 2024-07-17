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

@class CCUIControlCenterVisualEffect; 
static id (*_logos_orig$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor)(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterVisualEffect* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterVisualEffect* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterVisualEffect* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIControlCenterVisualEffect = objc_getClass("CCUIControlCenterVisualEffect"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIControlCenterVisualEffect, @selector(contentsMultiplyColor), (IMP)&_logos_method$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor, (IMP*)&_logos_orig$_ungrouped$CCUIControlCenterVisualEffect$contentsMultiplyColor);}} }
#line 10 "Tweak.xm"
