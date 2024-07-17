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

@class CKComposition; @class _UITextFieldRoundedRectBackgroundViewNeue; @class CKMessageEntryView; 
static id (*_logos_orig$_ungrouped$CKMessageEntryView$audioButton)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKMessageEntryView$audioButton(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CKComposition$isSendAnimated)(_LOGOS_SELF_TYPE_NORMAL CKComposition* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CKComposition$isSendAnimated(_LOGOS_SELF_TYPE_NORMAL CKComposition* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$_initWithFrame$active$lineWidth$updateView$)(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST, SEL, CGRect, bool, double, bool); static id _logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$_initWithFrame$active$lineWidth$updateView$(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST, SEL, CGRect, bool, double, bool); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$CKMessageEntryView$audioButton(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static bool _logos_method$_ungrouped$CKComposition$isSendAnimated(_LOGOS_SELF_TYPE_NORMAL CKComposition* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static id _logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$_initWithFrame$active$lineWidth$updateView$(_LOGOS_SELF_TYPE_NORMAL _UITextFieldRoundedRectBackgroundViewNeue* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect arg1, bool arg2, double arg3, bool arg4) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKMessageEntryView = objc_getClass("CKMessageEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryView, @selector(audioButton), (IMP)&_logos_method$_ungrouped$CKMessageEntryView$audioButton, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryView$audioButton);}Class _logos_class$_ungrouped$CKComposition = objc_getClass("CKComposition"); { MSHookMessageEx(_logos_class$_ungrouped$CKComposition, @selector(isSendAnimated), (IMP)&_logos_method$_ungrouped$CKComposition$isSendAnimated, (IMP*)&_logos_orig$_ungrouped$CKComposition$isSendAnimated);}Class _logos_class$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue = objc_getClass("_UITextFieldRoundedRectBackgroundViewNeue"); { MSHookMessageEx(_logos_class$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue, @selector(_initWithFrame:active:lineWidth:updateView:), (IMP)&_logos_method$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$_initWithFrame$active$lineWidth$updateView$, (IMP*)&_logos_orig$_ungrouped$_UITextFieldRoundedRectBackgroundViewNeue$_initWithFrame$active$lineWidth$updateView$);}} }
#line 23 "Tweak.xm"
