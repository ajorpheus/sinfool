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

@class UIStatusBarBatteryItemView; 
static BOOL (*_logos_orig$_ungrouped$UIStatusBarBatteryItemView$_needsAccessoryImage)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UIStatusBarBatteryItemView$_needsAccessoryImage(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$UIStatusBarBatteryItemView$extraRightPadding)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$UIStatusBarBatteryItemView$extraRightPadding(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$UIStatusBarBatteryItemView$_needsAccessoryImage(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static id _logos_method$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static float _logos_method$_ungrouped$UIStatusBarBatteryItemView$extraRightPadding(_LOGOS_SELF_TYPE_NORMAL UIStatusBarBatteryItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return -4;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarBatteryItemView = objc_getClass("UIStatusBarBatteryItemView"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarBatteryItemView, @selector(_needsAccessoryImage), (IMP)&_logos_method$_ungrouped$UIStatusBarBatteryItemView$_needsAccessoryImage, (IMP*)&_logos_orig$_ungrouped$UIStatusBarBatteryItemView$_needsAccessoryImage);}{ MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarBatteryItemView, @selector(_accessoryImage), (IMP)&_logos_method$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage, (IMP*)&_logos_orig$_ungrouped$UIStatusBarBatteryItemView$_accessoryImage);}{ MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarBatteryItemView, @selector(extraRightPadding), (IMP)&_logos_method$_ungrouped$UIStatusBarBatteryItemView$extraRightPadding, (IMP*)&_logos_orig$_ungrouped$UIStatusBarBatteryItemView$extraRightPadding);}} }
#line 21 "Tweak.xm"
