#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$)(id, SEL, id, id, id, bool);
static id _patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(id self, SEL _cmd, id arg1, id arg2, id arg3, bool arg4) {
    // Status Bar
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(self, _cmd, arg1, arg2, arg3, arg4);
}

static void (*_orig_ftt_meth_$YTAppColorStyle$setThemeColor$titleColor$animated$)(id, SEL, id, id, bool);
static void _patched_ftt_meth_$YTAppColorStyle$setThemeColor$titleColor$animated$(id self, SEL _cmd, id arg1, id arg2, bool arg3) {
    // Nav Bar - BG & Title
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTAppColorStyle$setThemeColor$titleColor$animated$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$YTCollectionView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTCollectionView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Main BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTCollectionView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTAsyncCollectionView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTAsyncCollectionView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Main BG #2
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTAsyncCollectionView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTVideoView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTVideoView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Main BG #3
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTVideoView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTCollectionSeparatorView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTCollectionSeparatorView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Main BG #4
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTCollectionSeparatorView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTNGWatchMiniBarView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTNGWatchMiniBarView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Player Mini Bar
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTNGWatchMiniBarView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTPivotBarItemView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTPivotBarItemView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Tab Bar
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTPivotBarItemView$setBackgroundColor$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$YTColdConfig$isDarkThemeAllowed(id self, SEL _cmd) {
    // Dark vs Light Theme Elements - Text & BG's Etc
    return 1;
}

static void (*_orig_ftt_meth_$YTPermissionsView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTPermissionsView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Permissions BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTPermissionsView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTChannelCreationFormResponseView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTChannelCreationFormResponseView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Account - My Channel BG
    arg1 = [UIColor colorWithRed:40/255.0 green:40/255.0 blue:40/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTChannelCreationFormResponseView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOOTransitionableView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOOTransitionableView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Account - Switch Account Header BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$GOOTransitionableView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTInlineSignInView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTInlineSignInView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Account - Switch Account BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTInlineSignInView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$QTMCollectionView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$QTMCollectionView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Account - Switch Account (Manage Account) BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$QTMCollectionView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTSettingsCell$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTSettingsCell$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Account - Settings
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTSettingsCell$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTNavigationBar$setBarTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTNavigationBar$setBarTintColor$(id self, SEL _cmd, id arg1) {
    // Popup - Header (nav Bar Ipad)
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTNavigationBar$setBarTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOOPopoverView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOOPopoverView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Popup - BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$GOOPopoverView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOODialogView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOODialogView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Popup - BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$GOODialogView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOODialogView$setActionButtonIconColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOODialogView$setActionButtonIconColor$(id self, SEL _cmd, id arg1) {
    // Popup - Icon Color
    arg1 = [UIColor colorWithRed:254/255.0 green:254/255.0 blue:254/255.0 alpha:255/255.0];
    _orig_ftt_meth_$GOODialogView$setActionButtonIconColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOODialogView$setActionButtonTitleColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOODialogView$setActionButtonTitleColor$(id self, SEL _cmd, id arg1) {
    // Popup - Title Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$GOODialogView$setActionButtonTitleColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOODialogActionButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOODialogActionButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Popup - Cancel Button
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$GOODialogActionButton$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTShareTitleView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTShareTitleView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Share Popup - Title BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTShareTitleView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTSharePanelPromoView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTSharePanelPromoView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Share Popup - BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTSharePanelPromoView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Share Popup - Button BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTButton$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$QTMSwitch$setOnTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$QTMSwitch$setOnTintColor$(id self, SEL _cmd, id arg1) {
    // Switch - On
    arg1 = [UIColor colorWithRed:66/255.0 green:133/255.0 blue:244/255.0 alpha:255/255.0];
    _orig_ftt_meth_$QTMSwitch$setOnTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$QTMSwitch$setOffThumbColor$)(id, SEL, id);
static void _patched_ftt_meth_$QTMSwitch$setOffThumbColor$(id self, SEL _cmd, id arg1) {
    // Switch - Off
    arg1 = [UIColor colorWithRed:189/255.0 green:189/255.0 blue:189/255.0 alpha:255/255.0];
    _orig_ftt_meth_$QTMSwitch$setOffThumbColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$QTMSwitch$setOffTrackColor$)(id, SEL, id);
static void _patched_ftt_meth_$QTMSwitch$setOffTrackColor$(id self, SEL _cmd, id arg1) {
    // Switch - Track BG
    arg1 = [UIColor colorWithRed:105/255.0 green:105/255.0 blue:105/255.0 alpha:255/255.0];
    _orig_ftt_meth_$QTMSwitch$setOffTrackColor$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UIKBRenderConfig$lightKeyboard(id self, SEL _cmd) {
    // KB - Dark
    return 0;
}

static long long _patched_ftt_meth_$UIDevice$_keyboardGraphicsQuality(id self, SEL _cmd) {
    // KB - Black
    return 10;
}

static void (*_orig_ftt_meth_$YTTopAlignedView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTTopAlignedView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTTopAlignedView$setBackgroundColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:hasBusyBackground:), (IMP)_patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$, (IMP *)_orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$);
    Class _ftt_class_YTAppColorStyle = objc_getClass("YTAppColorStyle");
    MSHookMessageEx(_ftt_class_YTAppColorStyle, @selector(setThemeColor:titleColor:animated:), (IMP)_patched_ftt_meth_$YTAppColorStyle$setThemeColor$titleColor$animated$, (IMP *)_orig_ftt_meth_$YTAppColorStyle$setThemeColor$titleColor$animated$);
    Class _ftt_class_YTCollectionView = objc_getClass("YTCollectionView");
    MSHookMessageEx(_ftt_class_YTCollectionView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTCollectionView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTCollectionView$setBackgroundColor$);
    Class _ftt_class_YTAsyncCollectionView = objc_getClass("YTAsyncCollectionView");
    MSHookMessageEx(_ftt_class_YTAsyncCollectionView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTAsyncCollectionView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTAsyncCollectionView$setBackgroundColor$);
    Class _ftt_class_YTVideoView = objc_getClass("YTVideoView");
    MSHookMessageEx(_ftt_class_YTVideoView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTVideoView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTVideoView$setBackgroundColor$);
    Class _ftt_class_YTCollectionSeparatorView = objc_getClass("YTCollectionSeparatorView");
    MSHookMessageEx(_ftt_class_YTCollectionSeparatorView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTCollectionSeparatorView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTCollectionSeparatorView$setBackgroundColor$);
    Class _ftt_class_YTNGWatchMiniBarView = objc_getClass("YTNGWatchMiniBarView");
    MSHookMessageEx(_ftt_class_YTNGWatchMiniBarView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTNGWatchMiniBarView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTNGWatchMiniBarView$setBackgroundColor$);
    Class _ftt_class_YTPivotBarItemView = objc_getClass("YTPivotBarItemView");
    MSHookMessageEx(_ftt_class_YTPivotBarItemView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTPivotBarItemView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTPivotBarItemView$setBackgroundColor$);
    Class _ftt_class_YTColdConfig = objc_getClass("YTColdConfig");
    MSHookMessageEx(_ftt_class_YTColdConfig, @selector(isDarkThemeAllowed), (IMP)_patched_ftt_meth_$YTColdConfig$isDarkThemeAllowed, NULL);
    Class _ftt_class_YTPermissionsView = objc_getClass("YTPermissionsView");
    MSHookMessageEx(_ftt_class_YTPermissionsView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTPermissionsView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTPermissionsView$setBackgroundColor$);
    Class _ftt_class_YTChannelCreationFormResponseView = objc_getClass("YTChannelCreationFormResponseView");
    MSHookMessageEx(_ftt_class_YTChannelCreationFormResponseView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTChannelCreationFormResponseView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTChannelCreationFormResponseView$setBackgroundColor$);
    Class _ftt_class_GOOTransitionableView = objc_getClass("GOOTransitionableView");
    MSHookMessageEx(_ftt_class_GOOTransitionableView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$GOOTransitionableView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$GOOTransitionableView$setBackgroundColor$);
    Class _ftt_class_YTInlineSignInView = objc_getClass("YTInlineSignInView");
    MSHookMessageEx(_ftt_class_YTInlineSignInView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTInlineSignInView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTInlineSignInView$setBackgroundColor$);
    Class _ftt_class_QTMCollectionView = objc_getClass("QTMCollectionView");
    MSHookMessageEx(_ftt_class_QTMCollectionView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$QTMCollectionView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$QTMCollectionView$setBackgroundColor$);
    Class _ftt_class_YTSettingsCell = objc_getClass("YTSettingsCell");
    MSHookMessageEx(_ftt_class_YTSettingsCell, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTSettingsCell$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTSettingsCell$setBackgroundColor$);
    Class _ftt_class_YTNavigationBar = objc_getClass("YTNavigationBar");
    MSHookMessageEx(_ftt_class_YTNavigationBar, @selector(setBarTintColor:), (IMP)_patched_ftt_meth_$YTNavigationBar$setBarTintColor$, (IMP *)_orig_ftt_meth_$YTNavigationBar$setBarTintColor$);
    Class _ftt_class_GOOPopoverView = objc_getClass("GOOPopoverView");
    MSHookMessageEx(_ftt_class_GOOPopoverView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$GOOPopoverView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$GOOPopoverView$setBackgroundColor$);
    Class _ftt_class_GOODialogView = objc_getClass("GOODialogView");
    MSHookMessageEx(_ftt_class_GOODialogView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$GOODialogView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$GOODialogView$setBackgroundColor$);
    MSHookMessageEx(_ftt_class_GOODialogView, @selector(setActionButtonIconColor:), (IMP)_patched_ftt_meth_$GOODialogView$setActionButtonIconColor$, (IMP *)_orig_ftt_meth_$GOODialogView$setActionButtonIconColor$);
    MSHookMessageEx(_ftt_class_GOODialogView, @selector(setActionButtonTitleColor:), (IMP)_patched_ftt_meth_$GOODialogView$setActionButtonTitleColor$, (IMP *)_orig_ftt_meth_$GOODialogView$setActionButtonTitleColor$);
    Class _ftt_class_GOODialogActionButton = objc_getClass("GOODialogActionButton");
    MSHookMessageEx(_ftt_class_GOODialogActionButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$GOODialogActionButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$GOODialogActionButton$setBackgroundColor$);
    Class _ftt_class_YTShareTitleView = objc_getClass("YTShareTitleView");
    MSHookMessageEx(_ftt_class_YTShareTitleView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTShareTitleView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTShareTitleView$setBackgroundColor$);
    Class _ftt_class_YTSharePanelPromoView = objc_getClass("YTSharePanelPromoView");
    MSHookMessageEx(_ftt_class_YTSharePanelPromoView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTSharePanelPromoView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTSharePanelPromoView$setBackgroundColor$);
    Class _ftt_class_YTButton = objc_getClass("YTButton");
    MSHookMessageEx(_ftt_class_YTButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTButton$setBackgroundColor$);
    Class _ftt_class_QTMSwitch = objc_getClass("QTMSwitch");
    MSHookMessageEx(_ftt_class_QTMSwitch, @selector(setOnTintColor:), (IMP)_patched_ftt_meth_$QTMSwitch$setOnTintColor$, (IMP *)_orig_ftt_meth_$QTMSwitch$setOnTintColor$);
    MSHookMessageEx(_ftt_class_QTMSwitch, @selector(setOffThumbColor:), (IMP)_patched_ftt_meth_$QTMSwitch$setOffThumbColor$, (IMP *)_orig_ftt_meth_$QTMSwitch$setOffThumbColor$);
    MSHookMessageEx(_ftt_class_QTMSwitch, @selector(setOffTrackColor:), (IMP)_patched_ftt_meth_$QTMSwitch$setOffTrackColor$, (IMP *)_orig_ftt_meth_$QTMSwitch$setOffTrackColor$);
    Class _ftt_class_UIKBRenderConfig = objc_getClass("UIKBRenderConfig");
    MSHookMessageEx(_ftt_class_UIKBRenderConfig, @selector(lightKeyboard), (IMP)_patched_ftt_meth_$UIKBRenderConfig$lightKeyboard, NULL);
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(_keyboardGraphicsQuality), (IMP)_patched_ftt_meth_$UIDevice$_keyboardGraphicsQuality, NULL);
    Class _ftt_class_YTTopAlignedView = objc_getClass("YTTopAlignedView");
    MSHookMessageEx(_ftt_class_YTTopAlignedView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTTopAlignedView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTTopAlignedView$setBackgroundColor$);
}
