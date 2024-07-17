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

@class UILabel; @class UINavigationButton; @class UINavigationItemButtonView; 
static bool (*_logos_orig$_ungrouped$UINavigationButton$_wantsAccessibilityButtonShapes)(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UINavigationButton$_wantsAccessibilityButtonShapes(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UINavigationItemButtonView$_wantsAccessibilityButtonShapes)(_LOGOS_SELF_TYPE_NORMAL UINavigationItemButtonView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UINavigationItemButtonView$_wantsAccessibilityButtonShapes(_LOGOS_SELF_TYPE_NORMAL UINavigationItemButtonView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UINavigationButton$_wantsAccessibilityButtonShapes(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UINavigationItemButtonView$_wantsAccessibilityButtonShapes(_LOGOS_SELF_TYPE_NORMAL UINavigationItemButtonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UINavigationButton = objc_getClass("UINavigationButton"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationButton, @selector(_wantsAccessibilityButtonShapes), (IMP)&_logos_method$_ungrouped$UINavigationButton$_wantsAccessibilityButtonShapes, (IMP*)&_logos_orig$_ungrouped$UINavigationButton$_wantsAccessibilityButtonShapes);}Class _logos_class$_ungrouped$UINavigationItemButtonView = objc_getClass("UINavigationItemButtonView"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationItemButtonView, @selector(_wantsAccessibilityButtonShapes), (IMP)&_logos_method$_ungrouped$UINavigationItemButtonView$_wantsAccessibilityButtonShapes, (IMP*)&_logos_orig$_ungrouped$UINavigationItemButtonView$_wantsAccessibilityButtonShapes);}Class _logos_class$_ungrouped$UILabel = objc_getClass("UILabel"); { MSHookMessageEx(_logos_class$_ungrouped$UILabel, @selector(_setWantsUnderlineForAccessibilityButtonShapesEnabled:), (IMP)&_logos_method$_ungrouped$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$, (IMP*)&_logos_orig$_ungrouped$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$);}} }
#line 24 "Tweak.xm"
