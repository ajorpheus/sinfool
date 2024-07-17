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

@class UINavigationBar; @class _UINavigationBarVisualStyle; 
static double (*_logos_orig$_ungrouped$_UINavigationBarVisualStyle$leftBackTitleMarginForCustomBackButtonBackground$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarVisualStyle* _LOGOS_SELF_CONST, SEL, id); static double _logos_method$_ungrouped$_UINavigationBarVisualStyle$leftBackTitleMarginForCustomBackButtonBackground$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarVisualStyle* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UINavigationBar$_suppressBackIndicator)(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UINavigationBar$_suppressBackIndicator(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static double _logos_method$_ungrouped$_UINavigationBarVisualStyle$leftBackTitleMarginForCustomBackButtonBackground$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarVisualStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}



static bool _logos_method$_ungrouped$UINavigationBar$_suppressBackIndicator(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UINavigationBarVisualStyle = objc_getClass("_UINavigationBarVisualStyle"); { MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarVisualStyle, @selector(leftBackTitleMarginForCustomBackButtonBackground:), (IMP)&_logos_method$_ungrouped$_UINavigationBarVisualStyle$leftBackTitleMarginForCustomBackButtonBackground$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarVisualStyle$leftBackTitleMarginForCustomBackButtonBackground$);}Class _logos_class$_ungrouped$UINavigationBar = objc_getClass("UINavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationBar, @selector(_suppressBackIndicator), (IMP)&_logos_method$_ungrouped$UINavigationBar$_suppressBackIndicator, (IMP*)&_logos_orig$_ungrouped$UINavigationBar$_suppressBackIndicator);}} }
#line 15 "Tweak.xm"
