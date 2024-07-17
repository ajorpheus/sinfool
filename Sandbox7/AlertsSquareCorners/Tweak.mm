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

@class UIAlertControllerVisualStyleAlert; @class UIAlertControllerVisualStyleActionSheet; 
static double (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlert$backgroundCornerRadius)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$backgroundCornerRadius(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleActionSheet$backgroundCornerRadius)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$backgroundCornerRadius(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static double _logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$backgroundCornerRadius(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static double _logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$backgroundCornerRadius(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIAlertControllerVisualStyleAlert = objc_getClass("UIAlertControllerVisualStyleAlert"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleAlert, @selector(backgroundCornerRadius), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$backgroundCornerRadius, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlert$backgroundCornerRadius);}Class _logos_class$_ungrouped$UIAlertControllerVisualStyleActionSheet = objc_getClass("UIAlertControllerVisualStyleActionSheet"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleActionSheet, @selector(backgroundCornerRadius), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$backgroundCornerRadius, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleActionSheet$backgroundCornerRadius);}} }
#line 17 "Tweak.xm"
