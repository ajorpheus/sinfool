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

@class _UIAlertControllerView; @class UIAlertController; 
static bool (*_logos_orig$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer)(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$_UIAlertControllerView$showsCancelAction)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIAlertControllerView$showsCancelAction(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$_UIAlertControllerView$_shouldHaveCancelActionInCollectionView)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIAlertControllerView$_shouldHaveCancelActionInCollectionView(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$_UIAlertControllerView$showsCancelAction(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$_UIAlertControllerView$_shouldHaveCancelActionInCollectionView(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static void _logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIAlertController = objc_getClass("UIAlertController"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertController, @selector(_canDismissWithGestureRecognizer), (IMP)&_logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer, (IMP*)&_logos_orig$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer);}Class _logos_class$_ungrouped$_UIAlertControllerView = objc_getClass("_UIAlertControllerView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerView, @selector(showsCancelAction), (IMP)&_logos_method$_ungrouped$_UIAlertControllerView$showsCancelAction, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerView$showsCancelAction);}{ MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerView, @selector(_shouldHaveCancelActionInCollectionView), (IMP)&_logos_method$_ungrouped$_UIAlertControllerView$_shouldHaveCancelActionInCollectionView, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerView$_shouldHaveCancelActionInCollectionView);}{ MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerView, @selector(setCancelActionIsDiscrete:), (IMP)&_logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$);}} }
#line 28 "Tweak.xm"
