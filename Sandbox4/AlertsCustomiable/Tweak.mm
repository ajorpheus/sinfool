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

@class UIAlertControllerVisualStyleAlertCar; @class _UIAlertControllerCollectionViewFlowLayout; @class _UIAlertControllerView; @class UIAlertController; @class _UIAlertControllerCarBackgroundView; @class UITraitCollection; @class UINavigationButton; @class UIAlertControllerVisualStyleActionSheetCar; 
static long long (*_logos_orig$_ungrouped$UITraitCollection$userInterfaceIdiom)(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UITraitCollection$userInterfaceIdiom(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UINavigationButton$_isExternalRoundedRectButton)(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UINavigationButton$_isExternalRoundedRectButton(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIAlertController$preferredStyle)(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIAlertController$preferredStyle(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer)(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIAlertControllerCarBackgroundView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCarBackgroundView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIAlertControllerCarBackgroundView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCarBackgroundView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UIAlertControllerCarBackgroundView$setCornerRadius$)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCarBackgroundView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$_UIAlertControllerCarBackgroundView$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCarBackgroundView* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$shouldRoundFirstCell)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$shouldRoundFirstCell(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInTitleLabel)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlertCar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInTitleLabel(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlertCar* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInMessageLabel)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlertCar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInMessageLabel(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlertCar* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIAlertControllerVisualStyleActionSheetCar$maximumNumberOfLinesInTitleLabel)(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheetCar* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheetCar$maximumNumberOfLinesInTitleLabel(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheetCar* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$_UIAlertControllerView$showsCancelAction)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIAlertControllerView$showsCancelAction(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$UITraitCollection$userInterfaceIdiom(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 3;
}



static bool _logos_method$_ungrouped$UINavigationButton$_isExternalRoundedRectButton(_LOGOS_SELF_TYPE_NORMAL UINavigationButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static long long _logos_method$_ungrouped$UIAlertController$preferredStyle(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$_UIAlertControllerCarBackgroundView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCarBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UIAlertControllerCarBackgroundView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UIAlertControllerCarBackgroundView$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCarBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 35;
    _logos_orig$_ungrouped$_UIAlertControllerCarBackgroundView$setCornerRadius$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static long long _logos_method$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInTitleLabel(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlertCar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 5;
}



static long long _logos_method$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInMessageLabel(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleAlertCar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1000;
}



static long long _logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheetCar$maximumNumberOfLinesInTitleLabel(_LOGOS_SELF_TYPE_NORMAL UIAlertControllerVisualStyleActionSheetCar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 5;
}



static bool _logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$shouldRoundFirstCell(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerCollectionViewFlowLayout* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$_UIAlertControllerView$showsCancelAction(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UITraitCollection = objc_getClass("UITraitCollection"); { MSHookMessageEx(_logos_class$_ungrouped$UITraitCollection, @selector(userInterfaceIdiom), (IMP)&_logos_method$_ungrouped$UITraitCollection$userInterfaceIdiom, (IMP*)&_logos_orig$_ungrouped$UITraitCollection$userInterfaceIdiom);}Class _logos_class$_ungrouped$UINavigationButton = objc_getClass("UINavigationButton"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationButton, @selector(_isExternalRoundedRectButton), (IMP)&_logos_method$_ungrouped$UINavigationButton$_isExternalRoundedRectButton, (IMP*)&_logos_orig$_ungrouped$UINavigationButton$_isExternalRoundedRectButton);}Class _logos_class$_ungrouped$UIAlertController = objc_getClass("UIAlertController"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertController, @selector(preferredStyle), (IMP)&_logos_method$_ungrouped$UIAlertController$preferredStyle, (IMP*)&_logos_orig$_ungrouped$UIAlertController$preferredStyle);}{ MSHookMessageEx(_logos_class$_ungrouped$UIAlertController, @selector(_canDismissWithGestureRecognizer), (IMP)&_logos_method$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer, (IMP*)&_logos_orig$_ungrouped$UIAlertController$_canDismissWithGestureRecognizer);}Class _logos_class$_ungrouped$_UIAlertControllerCarBackgroundView = objc_getClass("_UIAlertControllerCarBackgroundView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerCarBackgroundView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UIAlertControllerCarBackgroundView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerCarBackgroundView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerCarBackgroundView, @selector(setCornerRadius:), (IMP)&_logos_method$_ungrouped$_UIAlertControllerCarBackgroundView$setCornerRadius$, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerCarBackgroundView$setCornerRadius$);}Class _logos_class$_ungrouped$_UIAlertControllerCollectionViewFlowLayout = objc_getClass("_UIAlertControllerCollectionViewFlowLayout"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerCollectionViewFlowLayout, @selector(hideSeparators), (IMP)&_logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$hideSeparators);}{ MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerCollectionViewFlowLayout, @selector(shouldRoundFirstCell), (IMP)&_logos_method$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$shouldRoundFirstCell, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerCollectionViewFlowLayout$shouldRoundFirstCell);}Class _logos_class$_ungrouped$UIAlertControllerVisualStyleAlertCar = objc_getClass("UIAlertControllerVisualStyleAlertCar"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleAlertCar, @selector(maximumNumberOfLinesInTitleLabel), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInTitleLabel, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInTitleLabel);}{ MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleAlertCar, @selector(maximumNumberOfLinesInMessageLabel), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInMessageLabel, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleAlertCar$maximumNumberOfLinesInMessageLabel);}Class _logos_class$_ungrouped$UIAlertControllerVisualStyleActionSheetCar = objc_getClass("UIAlertControllerVisualStyleActionSheetCar"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertControllerVisualStyleActionSheetCar, @selector(maximumNumberOfLinesInTitleLabel), (IMP)&_logos_method$_ungrouped$UIAlertControllerVisualStyleActionSheetCar$maximumNumberOfLinesInTitleLabel, (IMP*)&_logos_orig$_ungrouped$UIAlertControllerVisualStyleActionSheetCar$maximumNumberOfLinesInTitleLabel);}Class _logos_class$_ungrouped$_UIAlertControllerView = objc_getClass("_UIAlertControllerView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerView, @selector(showsCancelAction), (IMP)&_logos_method$_ungrouped$_UIAlertControllerView$showsCancelAction, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerView$showsCancelAction);}{ MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerView, @selector(setCancelActionIsDiscrete:), (IMP)&_logos_method$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerView$setCancelActionIsDiscrete$);}} }
#line 97 "Tweak.xm"
