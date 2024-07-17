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

@class UIStatusBarForegroundStyleAttributes; @class UIStatusBarBatteryItemView; 
static id (*_logos_orig$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$batteryAccessoryMargin)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundStyleAttributes* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$batteryAccessoryMargin(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundStyleAttributes* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static double _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$batteryAccessoryMargin(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundStyleAttributes* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarBatteryItemView = objc_getClass("UIStatusBarBatteryItemView"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarBatteryItemView, @selector(_accessoryImage), (IMP)&_logos_method$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage, (IMP*)&_logos_orig$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage);}Class _logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes, @selector(batteryAccessoryMargin), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$batteryAccessoryMargin, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$batteryAccessoryMargin);}} }
#line 15 "Tweak.xm"
