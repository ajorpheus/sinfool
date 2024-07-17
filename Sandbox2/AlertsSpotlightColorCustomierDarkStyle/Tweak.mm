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

@class SPUITextField; @class _UIAlertControllerView; @class UIButtonContent; @class _UIGroupTableViewCellBackgroundImageKey; @class _UIAlertControllerInterfaceActionGroupView; @class _UIVisualEffectFilterView; @class UIAlertControllerVisualStyleActionSheet; @class UIAlertControllerVisualStyleAlert; 
static void (*_logos_orig$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectFilterView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectFilterView* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlert$titleLabelColor)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$titleLabelColor(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlert$messageLabelColor)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$messageLabelColor(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleActionSheet$titleLabelColor)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$titleLabelColor(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleActionSheet$messageLabelColor)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$messageLabelColor(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerInterfaceActionGroupView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerInterfaceActionGroupView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$SPUITextField$updateWithColor$)(_LOGOS_SELF_TYPE_NORMAL SPUITextField* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SPUITextField$updateWithColor$(_LOGOS_SELF_TYPE_NORMAL SPUITextField* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UIButtonContent$setTitleColor$)(_LOGOS_SELF_TYPE_NORMAL UIButtonContent* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIButtonContent$setTitleColor$(_LOGOS_SELF_TYPE_NORMAL UIButtonContent* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setFillColor$)(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setFillColor$(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectFilterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:175/255.0];
    _logos_orig$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$titleLabelColor(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$messageLabelColor(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlert* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:187/255.0 green:187/255.0 blue:187/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$titleLabelColor(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$messageLabelColor(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheet* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:187/255.0 green:187/255.0 blue:187/255.0 alpha:255/255.0];
}



static bool _logos_method$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerInterfaceActionGroupView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SPUITextField$updateWithColor$(_LOGOS_SELF_TYPE_NORMAL SPUITextField* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SPUITextField$updateWithColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIButtonContent$setTitleColor$(_LOGOS_SELF_TYPE_NORMAL UIButtonContent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UIButtonContent$setTitleColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setFillColor$(_LOGOS_SELF_TYPE_NORMAL _UIGroupTableViewCellBackgroundImageKey* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:127/255.0];
    _logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setFillColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIVisualEffectFilterView = objc_getClass("_UIVisualEffectFilterView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIVisualEffectFilterView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UIVisualEffectFilterView$setBackgroundColor$);}Class _logos_class$_ungrouped$UIAlertControllerVisualStyleAlert = objc_getClass("UIAlertControllerVisualStyleAlert"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleAlert, @selector(titleLabelColor), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$titleLabelColor, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlert$titleLabelColor);}{ MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleAlert, @selector(messageLabelColor), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleAlert$messageLabelColor, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlert$messageLabelColor);}Class _logos_class$_ungrouped$UIAlertControllerVisualStyleActionSheet = objc_getClass("UIAlertControllerVisualStyleActionSheet"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleActionSheet, @selector(titleLabelColor), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$titleLabelColor, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleActionSheet$titleLabelColor);}{ MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleActionSheet, @selector(messageLabelColor), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheet$messageLabelColor, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleActionSheet$messageLabelColor);}Class _logos_class$_ungrouped$_UIAlertControllerInterfaceActionGroupView = objc_getClass("_UIAlertControllerInterfaceActionGroupView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerInterfaceActionGroupView, @selector(_shouldShowSeparatorAboveActionsSequenceView), (IMP)&_logos_method$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView);}Class _logos_class$_ungrouped$_UIAlertControllerView = objc_getClass("_UIAlertControllerView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerView, @selector(setCancelActionIsDiscrete:), (IMP)&_logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$);}Class _logos_class$_ungrouped$SPUITextField = objc_getClass("SPUITextField"); { MSHookMessageEx(_logos_class$_ungrouped$SPUITextField, @selector(updateWithColor:), (IMP)&_logos_method$_ungrouped$SPUITextField$updateWithColor$, (IMP*)&_logos_orig$_ungrouped$SPUITextField$updateWithColor$);}Class _logos_class$_ungrouped$UIButtonContent = objc_getClass("UIButtonContent"); { MSHookMessageEx(_logos_class$_ungrouped$UIButtonContent, @selector(setTitleColor:), (IMP)&_logos_method$_ungrouped$UIButtonContent$setTitleColor$, (IMP*)&_logos_orig$_ungrouped$UIButtonContent$setTitleColor$);}Class _logos_class$_ungrouped$_UIGroupTableViewCellBackgroundImageKey = objc_getClass("_UIGroupTableViewCellBackgroundImageKey"); { MSHookMessageEx(_logos_class$_ungrouped$_UIGroupTableViewCellBackgroundImageKey, @selector(setFillColor:), (IMP)&_logos_method$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setFillColor$, (IMP*)&_logos_orig$_ungrouped$_UIGroupTableViewCellBackgroundImageKey$setFillColor$);}} }
#line 78 "Tweak.xm"
