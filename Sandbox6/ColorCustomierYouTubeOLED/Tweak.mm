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

@class YTPermissionsView; @class YTShareTitleView; @class GOOPopoverView; @class YTAsyncCollectionView; @class YTAppColorStyle; @class YTCollectionSeparatorView; @class YTChannelCreationFormResponseView; @class UIKBRenderConfig; @class YTColdConfig; @class YTVideoView; @class UIStatusBarNewUIStyleAttributes; @class YTSharePanelPromoView; @class YTNavigationBar; @class YTSettingsCell; @class QTMCollectionView; @class YTTopAlignedView; @class GOODialogActionButton; @class UIDevice; @class YTCollectionView; @class QTMSwitch; @class GOOTransitionableView; @class YTInlineSignInView; @class GOODialogView; @class YTPivotBarItemView; @class YTButton; @class YTNGWatchMiniBarView; 
static UIStatusBarNewUIStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$)(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes*, SEL, id, id, id, bool) _LOGOS_RETURN_RETAINED; static UIStatusBarNewUIStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes*, SEL, id, id, id, bool) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$YTAppColorStyle$setThemeColor$titleColor$animated$)(_LOGOS_SELF_TYPE_NORMAL YTAppColorStyle* _LOGOS_SELF_CONST, SEL, id, id, bool); static void _logos_method$_ungrouped$YTAppColorStyle$setThemeColor$titleColor$animated$(_LOGOS_SELF_TYPE_NORMAL YTAppColorStyle* _LOGOS_SELF_CONST, SEL, id, id, bool); static void (*_logos_orig$_ungrouped$YTCollectionView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTCollectionView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTCollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTCollectionView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTAsyncCollectionView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTAsyncCollectionView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTAsyncCollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTAsyncCollectionView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTVideoView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTVideoView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTVideoView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTVideoView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTCollectionSeparatorView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTCollectionSeparatorView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTCollectionSeparatorView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTCollectionSeparatorView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTNGWatchMiniBarView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTNGWatchMiniBarView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTNGWatchMiniBarView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTNGWatchMiniBarView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTPivotBarItemView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTPivotBarItemView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTPivotBarItemView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTPivotBarItemView* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$YTColdConfig$isDarkThemeAllowed)(_LOGOS_SELF_TYPE_NORMAL YTColdConfig* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$YTColdConfig$isDarkThemeAllowed(_LOGOS_SELF_TYPE_NORMAL YTColdConfig* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTPermissionsView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTPermissionsView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTPermissionsView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTPermissionsView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTChannelCreationFormResponseView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTChannelCreationFormResponseView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTChannelCreationFormResponseView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTChannelCreationFormResponseView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOOTransitionableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL GOOTransitionableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOOTransitionableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOOTransitionableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTInlineSignInView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTInlineSignInView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTInlineSignInView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTInlineSignInView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$QTMCollectionView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL QTMCollectionView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$QTMCollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL QTMCollectionView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTSettingsCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTSettingsCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTSettingsCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTSettingsCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTNavigationBar$setBarTintColor$)(_LOGOS_SELF_TYPE_NORMAL YTNavigationBar* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTNavigationBar$setBarTintColor$(_LOGOS_SELF_TYPE_NORMAL YTNavigationBar* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOOPopoverView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL GOOPopoverView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOOPopoverView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOOPopoverView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOODialogView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOODialogView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOODialogView$setActionButtonIconColor$)(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOODialogView$setActionButtonIconColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOODialogView$setActionButtonTitleColor$)(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOODialogView$setActionButtonTitleColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$GOODialogActionButton$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL GOODialogActionButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$GOODialogActionButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogActionButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTShareTitleView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTShareTitleView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTShareTitleView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTShareTitleView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTSharePanelPromoView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTSharePanelPromoView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTSharePanelPromoView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTSharePanelPromoView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTButton$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$QTMSwitch$setOnTintColor$)(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$QTMSwitch$setOnTintColor$(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$QTMSwitch$setOffThumbColor$)(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$QTMSwitch$setOffThumbColor$(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$QTMSwitch$setOffTrackColor$)(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$QTMSwitch$setOffTrackColor$(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UIKBRenderConfig$lightKeyboard)(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIKBRenderConfig$lightKeyboard(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTTopAlignedView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTTopAlignedView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTTopAlignedView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTTopAlignedView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static UIStatusBarNewUIStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, bool arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(self, _cmd, arg1, arg2, arg3, arg4);
}



static void _logos_method$_ungrouped$YTAppColorStyle$setThemeColor$titleColor$animated$(_LOGOS_SELF_TYPE_NORMAL YTAppColorStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTAppColorStyle$setThemeColor$titleColor$animated$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$YTCollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTCollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTCollectionView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTAsyncCollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTAsyncCollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTAsyncCollectionView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTVideoView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTVideoView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTVideoView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTCollectionSeparatorView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTCollectionSeparatorView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTCollectionSeparatorView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTNGWatchMiniBarView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTNGWatchMiniBarView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTNGWatchMiniBarView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTPivotBarItemView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTPivotBarItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTPivotBarItemView$setBackgroundColor$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$YTColdConfig$isDarkThemeAllowed(_LOGOS_SELF_TYPE_NORMAL YTColdConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$YTPermissionsView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTPermissionsView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTPermissionsView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTChannelCreationFormResponseView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTChannelCreationFormResponseView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:40/255.0 green:40/255.0 blue:40/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTChannelCreationFormResponseView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOOTransitionableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOOTransitionableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$GOOTransitionableView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTInlineSignInView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTInlineSignInView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTInlineSignInView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$QTMCollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL QTMCollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$QTMCollectionView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTSettingsCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTSettingsCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTSettingsCell$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTNavigationBar$setBarTintColor$(_LOGOS_SELF_TYPE_NORMAL YTNavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTNavigationBar$setBarTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOOPopoverView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOOPopoverView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$GOOPopoverView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOODialogView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$GOODialogView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOODialogView$setActionButtonIconColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:254/255.0 green:254/255.0 blue:254/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$GOODialogView$setActionButtonIconColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOODialogView$setActionButtonTitleColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$GOODialogView$setActionButtonTitleColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GOODialogActionButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL GOODialogActionButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$GOODialogActionButton$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTShareTitleView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTShareTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTShareTitleView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTSharePanelPromoView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTSharePanelPromoView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTSharePanelPromoView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTButton$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$QTMSwitch$setOnTintColor$(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:66/255.0 green:133/255.0 blue:244/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$QTMSwitch$setOnTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$QTMSwitch$setOffThumbColor$(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:189/255.0 green:189/255.0 blue:189/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$QTMSwitch$setOffThumbColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$QTMSwitch$setOffTrackColor$(_LOGOS_SELF_TYPE_NORMAL QTMSwitch* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:105/255.0 green:105/255.0 blue:105/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$QTMSwitch$setOffTrackColor$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UIKBRenderConfig$lightKeyboard(_LOGOS_SELF_TYPE_NORMAL UIKBRenderConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static long long _logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 10;
}



static void _logos_method$_ungrouped$YTTopAlignedView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTTopAlignedView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTTopAlignedView$setBackgroundColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:hasBusyBackground:), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$);}Class _logos_class$_ungrouped$YTAppColorStyle = objc_getClass("YTAppColorStyle"); { MSHookMessageEx(_logos_class$_ungrouped$YTAppColorStyle, @selector(setThemeColor:titleColor:animated:), (IMP)&_logos_method$_ungrouped$YTAppColorStyle$setThemeColor$titleColor$animated$, (IMP*)&_logos_orig$_ungrouped$YTAppColorStyle$setThemeColor$titleColor$animated$);}Class _logos_class$_ungrouped$YTCollectionView = objc_getClass("YTCollectionView"); { MSHookMessageEx(_logos_class$_ungrouped$YTCollectionView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTCollectionView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTCollectionView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTAsyncCollectionView = objc_getClass("YTAsyncCollectionView"); { MSHookMessageEx(_logos_class$_ungrouped$YTAsyncCollectionView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTAsyncCollectionView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTAsyncCollectionView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTVideoView = objc_getClass("YTVideoView"); { MSHookMessageEx(_logos_class$_ungrouped$YTVideoView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTVideoView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTVideoView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTCollectionSeparatorView = objc_getClass("YTCollectionSeparatorView"); { MSHookMessageEx(_logos_class$_ungrouped$YTCollectionSeparatorView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTCollectionSeparatorView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTCollectionSeparatorView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTNGWatchMiniBarView = objc_getClass("YTNGWatchMiniBarView"); { MSHookMessageEx(_logos_class$_ungrouped$YTNGWatchMiniBarView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTNGWatchMiniBarView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTNGWatchMiniBarView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTPivotBarItemView = objc_getClass("YTPivotBarItemView"); { MSHookMessageEx(_logos_class$_ungrouped$YTPivotBarItemView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTPivotBarItemView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTPivotBarItemView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTColdConfig = objc_getClass("YTColdConfig"); { MSHookMessageEx(_logos_class$_ungrouped$YTColdConfig, @selector(isDarkThemeAllowed), (IMP)&_logos_method$_ungrouped$YTColdConfig$isDarkThemeAllowed, (IMP*)&_logos_orig$_ungrouped$YTColdConfig$isDarkThemeAllowed);}Class _logos_class$_ungrouped$YTPermissionsView = objc_getClass("YTPermissionsView"); { MSHookMessageEx(_logos_class$_ungrouped$YTPermissionsView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTPermissionsView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTPermissionsView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTChannelCreationFormResponseView = objc_getClass("YTChannelCreationFormResponseView"); { MSHookMessageEx(_logos_class$_ungrouped$YTChannelCreationFormResponseView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTChannelCreationFormResponseView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTChannelCreationFormResponseView$setBackgroundColor$);}Class _logos_class$_ungrouped$GOOTransitionableView = objc_getClass("GOOTransitionableView"); { MSHookMessageEx(_logos_class$_ungrouped$GOOTransitionableView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$GOOTransitionableView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$GOOTransitionableView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTInlineSignInView = objc_getClass("YTInlineSignInView"); { MSHookMessageEx(_logos_class$_ungrouped$YTInlineSignInView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTInlineSignInView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTInlineSignInView$setBackgroundColor$);}Class _logos_class$_ungrouped$QTMCollectionView = objc_getClass("QTMCollectionView"); { MSHookMessageEx(_logos_class$_ungrouped$QTMCollectionView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$QTMCollectionView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$QTMCollectionView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTSettingsCell = objc_getClass("YTSettingsCell"); { MSHookMessageEx(_logos_class$_ungrouped$YTSettingsCell, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTSettingsCell$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTSettingsCell$setBackgroundColor$);}Class _logos_class$_ungrouped$YTNavigationBar = objc_getClass("YTNavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$YTNavigationBar, @selector(setBarTintColor:), (IMP)&_logos_method$_ungrouped$YTNavigationBar$setBarTintColor$, (IMP*)&_logos_orig$_ungrouped$YTNavigationBar$setBarTintColor$);}Class _logos_class$_ungrouped$GOOPopoverView = objc_getClass("GOOPopoverView"); { MSHookMessageEx(_logos_class$_ungrouped$GOOPopoverView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$GOOPopoverView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$GOOPopoverView$setBackgroundColor$);}Class _logos_class$_ungrouped$GOODialogView = objc_getClass("GOODialogView"); { MSHookMessageEx(_logos_class$_ungrouped$GOODialogView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$GOODialogView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$GOODialogView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$GOODialogView, @selector(setActionButtonIconColor:), (IMP)&_logos_method$_ungrouped$GOODialogView$setActionButtonIconColor$, (IMP*)&_logos_orig$_ungrouped$GOODialogView$setActionButtonIconColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$GOODialogView, @selector(setActionButtonTitleColor:), (IMP)&_logos_method$_ungrouped$GOODialogView$setActionButtonTitleColor$, (IMP*)&_logos_orig$_ungrouped$GOODialogView$setActionButtonTitleColor$);}Class _logos_class$_ungrouped$GOODialogActionButton = objc_getClass("GOODialogActionButton"); { MSHookMessageEx(_logos_class$_ungrouped$GOODialogActionButton, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$GOODialogActionButton$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$GOODialogActionButton$setBackgroundColor$);}Class _logos_class$_ungrouped$YTShareTitleView = objc_getClass("YTShareTitleView"); { MSHookMessageEx(_logos_class$_ungrouped$YTShareTitleView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTShareTitleView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTShareTitleView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTSharePanelPromoView = objc_getClass("YTSharePanelPromoView"); { MSHookMessageEx(_logos_class$_ungrouped$YTSharePanelPromoView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTSharePanelPromoView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTSharePanelPromoView$setBackgroundColor$);}Class _logos_class$_ungrouped$YTButton = objc_getClass("YTButton"); { MSHookMessageEx(_logos_class$_ungrouped$YTButton, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTButton$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTButton$setBackgroundColor$);}Class _logos_class$_ungrouped$QTMSwitch = objc_getClass("QTMSwitch"); { MSHookMessageEx(_logos_class$_ungrouped$QTMSwitch, @selector(setOnTintColor:), (IMP)&_logos_method$_ungrouped$QTMSwitch$setOnTintColor$, (IMP*)&_logos_orig$_ungrouped$QTMSwitch$setOnTintColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$QTMSwitch, @selector(setOffThumbColor:), (IMP)&_logos_method$_ungrouped$QTMSwitch$setOffThumbColor$, (IMP*)&_logos_orig$_ungrouped$QTMSwitch$setOffThumbColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$QTMSwitch, @selector(setOffTrackColor:), (IMP)&_logos_method$_ungrouped$QTMSwitch$setOffTrackColor$, (IMP*)&_logos_orig$_ungrouped$QTMSwitch$setOffTrackColor$);}Class _logos_class$_ungrouped$UIKBRenderConfig = objc_getClass("UIKBRenderConfig"); { MSHookMessageEx(_logos_class$_ungrouped$UIKBRenderConfig, @selector(lightKeyboard), (IMP)&_logos_method$_ungrouped$UIKBRenderConfig$lightKeyboard, (IMP*)&_logos_orig$_ungrouped$UIKBRenderConfig$lightKeyboard);}Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); { MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(_keyboardGraphicsQuality), (IMP)&_logos_method$_ungrouped$UIDevice$_keyboardGraphicsQuality, (IMP*)&_logos_orig$_ungrouped$UIDevice$_keyboardGraphicsQuality);}Class _logos_class$_ungrouped$YTTopAlignedView = objc_getClass("YTTopAlignedView"); { MSHookMessageEx(_logos_class$_ungrouped$YTTopAlignedView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTTopAlignedView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTTopAlignedView$setBackgroundColor$);}} }
#line 240 "Tweak.xm"
