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

@class UIAlertControllerVisualStyle; @class UIAlertController; @class _UIAlertControllerVisualStyleProvidingWeakInterposer; @class UIActionSheet; 
static id (*_logos_orig$_ungrouped$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$)(_LOGOS_SELF_TYPE_NORMAL UIActionSheet* _LOGOS_SELF_CONST, SEL, id, id, id); static id _logos_method$_ungrouped$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$(_LOGOS_SELF_TYPE_NORMAL UIActionSheet* _LOGOS_SELF_CONST, SEL, id, id, id); static BOOL (*_logos_orig$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyle* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyle* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer)(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$UIAlertController$preferredStyle)(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$UIAlertController$preferredStyle(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerVisualStyleProvidingWeakInterposer* _LOGOS_SELF_CONST, SEL, int, id, id); static id _logos_method$_ungrouped$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerVisualStyleProvidingWeakInterposer* _LOGOS_SELF_CONST, SEL, int, id, id); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$(_LOGOS_SELF_TYPE_NORMAL UIActionSheet* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3) {
    
    arg2 = NULL;
    return _logos_orig$_ungrouped$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$(self, _cmd, arg1, arg2, arg3);
}



static BOOL _logos_method$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static BOOL _logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static int _logos_method$_ungrouped$UIAlertController$preferredStyle(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static id _logos_method$_ungrouped$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerVisualStyleProvidingWeakInterposer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1, id arg2, id arg3) {
    arg1 = 0;
    return _logos_orig$_ungrouped$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$(self, _cmd, arg1, arg2, arg3);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIActionSheet = objc_getClass("UIActionSheet"); { MSHookMessageEx(_logos_class$_ungrouped$UIActionSheet, @selector(addMediaButtonWithTitle:iconView:andTableIconView:), (IMP)&_logos_method$_ungrouped$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$, (IMP*)&_logos_orig$_ungrouped$UIActionSheet$addMediaButtonWithTitle$iconView$andTableIconView$);}Class _logos_class$_ungrouped$UIAlertControllerVisualStyle = objc_getClass("UIAlertControllerVisualStyle"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyle, @selector(hideActionSeparators), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators);}Class _logos_class$_ungrouped$UIAlertController = objc_getClass("UIAlertController"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertController, @selector(_canDismissWithGestureRecognizer), (IMP)&_logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer, (IMP*)&_logos_orig$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer);}{ MSHookMessageEx(_logos_class$_ungrouped$UIAlertController, @selector(preferredStyle), (IMP)&_logos_method$_ungrouped$UIAlertController$preferredStyle, (IMP*)&_logos_orig$_ungrouped$UIAlertController$preferredStyle);}Class _logos_class$_ungrouped$_UIAlertControllerVisualStyleProvidingWeakInterposer = objc_getClass("_UIAlertControllerVisualStyleProvidingWeakInterposer"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerVisualStyleProvidingWeakInterposer, @selector(visualStyleForAlertControllerStyle:traitCollection:descriptor:), (IMP)&_logos_method$_ungrouped$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerVisualStyleProvidingWeakInterposer$visualStyleForAlertControllerStyle$traitCollection$descriptor$);}} }
#line 38 "Tweak.xm"
