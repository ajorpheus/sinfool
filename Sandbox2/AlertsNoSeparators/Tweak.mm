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

@class UIAlertControllerVisualStyle; @class _UIAlertControllerCollectionViewFlowLayout; 
static bool (*_logos_orig$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyle* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyle* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIAlertControllerCollectionViewFlowLayout = objc_getClass("_UIAlertControllerCollectionViewFlowLayout"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerCollectionViewFlowLayout, @selector(hideSeparators), (IMP)&_logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators);}Class _logos_class$_ungrouped$UIAlertControllerVisualStyle = objc_getClass("UIAlertControllerVisualStyle"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyle, @selector(hideActionSeparators), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyle$hideActionSeparators);}} }
#line 17 "Tweak.xm"
