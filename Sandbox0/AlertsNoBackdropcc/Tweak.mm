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

@class _UIAlertControllerView; @class _UIAlertControlleriOSActionSheetCancelBackgroundView; 
static BOOL (*_logos_orig$_ungrouped$_UIAlertControllerView$shouldHaveBackdropView)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$_UIAlertControllerView$shouldHaveBackdropView(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL); static _UIAlertControlleriOSActionSheetCancelBackgroundView* (*_logos_orig$_ungrouped$_UIAlertControlleriOSActionSheetCancelBackgroundView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT _UIAlertControlleriOSActionSheetCancelBackgroundView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static _UIAlertControlleriOSActionSheetCancelBackgroundView* _logos_method$_ungrouped$_UIAlertControlleriOSActionSheetCancelBackgroundView$initWithFrame$(_LOGOS_SELF_TYPE_INIT _UIAlertControlleriOSActionSheetCancelBackgroundView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$_UIAlertControllerView$shouldHaveBackdropView(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static _UIAlertControlleriOSActionSheetCancelBackgroundView* _logos_method$_ungrouped$_UIAlertControlleriOSActionSheetCancelBackgroundView$initWithFrame$(_LOGOS_SELF_TYPE_INIT _UIAlertControlleriOSActionSheetCancelBackgroundView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIAlertControllerView = objc_getClass("_UIAlertControllerView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerView, @selector(shouldHaveBackdropView), (IMP)&_logos_method$_ungrouped$_UIAlertControllerView$shouldHaveBackdropView, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerView$shouldHaveBackdropView);}Class _logos_class$_ungrouped$_UIAlertControlleriOSActionSheetCancelBackgroundView = objc_getClass("_UIAlertControlleriOSActionSheetCancelBackgroundView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControlleriOSActionSheetCancelBackgroundView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$_UIAlertControlleriOSActionSheetCancelBackgroundView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$_UIAlertControlleriOSActionSheetCancelBackgroundView$initWithFrame$);}} }
#line 17 "Tweak.xm"
