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

@class GOODialogActionButton; @class GOOPopoverView; @class YTTopAlignedView; @class GOODialogView; @class GOODimmingBackgroundView; @class YTDialogContainerScrollView; 
static void (*_logos_orig$_ungrouped$GOODimmingBackgroundView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL GOODimmingBackgroundView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOODimmingBackgroundView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODimmingBackgroundView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTDialogContainerScrollView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTDialogContainerScrollView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTDialogContainerScrollView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTDialogContainerScrollView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOODialogView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOODialogView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOODialogActionButton$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL GOODialogActionButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOODialogActionButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogActionButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTTopAlignedView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTTopAlignedView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTTopAlignedView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTTopAlignedView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOOPopoverView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL GOOPopoverView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOOPopoverView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOOPopoverView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$GOODimmingBackgroundView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODimmingBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$GOODimmingBackgroundView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTDialogContainerScrollView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTDialogContainerScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$YTDialogContainerScrollView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOODialogView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$GOODialogView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOODialogActionButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogActionButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$GOODialogActionButton$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTTopAlignedView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTTopAlignedView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$YTTopAlignedView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOOPopoverView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOOPopoverView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$GOOPopoverView$setBackgroundColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GOODimmingBackgroundView = objc_getClass("GOODimmingBackgroundView"); { MSHookMessageEx(_logos_class$_ungrouped$GOODimmingBackgroundView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$GOODimmingBackgroundView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$GOODimmingBackgroundView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTDialogContainerScrollView = objc_getClass("YTDialogContainerScrollView"); { MSHookMessageEx(_logos_class$_ungrouped$YTDialogContainerScrollView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTDialogContainerScrollView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTDialogContainerScrollView$setBackgroundColor$);}Class _logos_class$_ungrouped$GOODialogView = objc_getClass("GOODialogView"); { MSHookMessageEx(_logos_class$_ungrouped$GOODialogView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$GOODialogView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$GOODialogView$setBackgroundColor$);}Class _logos_class$_ungrouped$GOODialogActionButton = objc_getClass("GOODialogActionButton"); { MSHookMessageEx(_logos_class$_ungrouped$GOODialogActionButton, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$GOODialogActionButton$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$GOODialogActionButton$setBackgroundColor$);}Class _logos_class$_ungrouped$YTTopAlignedView = objc_getClass("YTTopAlignedView"); { MSHookMessageEx(_logos_class$_ungrouped$YTTopAlignedView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTTopAlignedView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTTopAlignedView$setBackgroundColor$);}Class _logos_class$_ungrouped$GOOPopoverView = objc_getClass("GOOPopoverView"); { MSHookMessageEx(_logos_class$_ungrouped$GOOPopoverView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$GOOPopoverView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$GOOPopoverView$setBackgroundColor$);}} }
#line 45 "Tweak.xm"
