#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIStyleAttributes
- (id)initWithRequest:(id)arg1 backgroundColor:(id)arg2 foregroundColor:(id)arg3 hasBusyBackground:(bool)arg4 {
    // Status Bar
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook YTAppColorStyle
- (void)setThemeColor:(id)arg1 titleColor:(id)arg2 animated:(bool)arg3 {
    // Nav Bar - BG & Title
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTCollectionView
- (void)setBackgroundColor:(id)arg1 {
    // Main BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTAsyncCollectionView
- (void)setBackgroundColor:(id)arg1 {
    // Main BG #2
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTVideoView
- (void)setBackgroundColor:(id)arg1 {
    // Main BG #3
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTCollectionSeparatorView
- (void)setBackgroundColor:(id)arg1 {
    // Main BG #4
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTNGWatchMiniBarView
- (void)setBackgroundColor:(id)arg1 {
    // Player Mini Bar
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTPivotBarItemView
- (void)setBackgroundColor:(id)arg1 {
    // Tab Bar
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTColdConfig
- (bool)isDarkThemeAllowed {
    // Dark vs Light Theme Elements - Text & BG's Etc
    return 1;
}
%end

%hook YTPermissionsView
- (void)setBackgroundColor:(id)arg1 {
    // Permissions BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTChannelCreationFormResponseView
- (void)setBackgroundColor:(id)arg1 {
    // Account - My Channel BG
    arg1 = [UIColor colorWithRed:40/255.0 green:40/255.0 blue:40/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook GOOTransitionableView
- (void)setBackgroundColor:(id)arg1 {
    // Account - Switch Account Header BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTInlineSignInView
- (void)setBackgroundColor:(id)arg1 {
    // Account - Switch Account BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook QTMCollectionView
- (void)setBackgroundColor:(id)arg1 {
    // Account - Switch Account (Manage Account) BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTSettingsCell
- (void)setBackgroundColor:(id)arg1 {
    // Account - Settings
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTNavigationBar
- (void)setBarTintColor:(id)arg1 {
    // Popup - Header (nav Bar Ipad)
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook GOOPopoverView
- (void)setBackgroundColor:(id)arg1 {
    // Popup - BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook GOODialogView
- (void)setBackgroundColor:(id)arg1 {
    // Popup - BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook GOODialogView
- (void)setActionButtonIconColor:(id)arg1 {
    // Popup - Icon Color
    arg1 = [UIColor colorWithRed:254/255.0 green:254/255.0 blue:254/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook GOODialogView
- (void)setActionButtonTitleColor:(id)arg1 {
    // Popup - Title Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook GOODialogActionButton
- (void)setBackgroundColor:(id)arg1 {
    // Popup - Cancel Button
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook YTShareTitleView
- (void)setBackgroundColor:(id)arg1 {
    // Share Popup - Title BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTSharePanelPromoView
- (void)setBackgroundColor:(id)arg1 {
    // Share Popup - BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTButton
- (void)setBackgroundColor:(id)arg1 {
    // Share Popup - Button BG
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook QTMSwitch
- (void)setOnTintColor:(id)arg1 {
    // Switch - On
    arg1 = [UIColor colorWithRed:66/255.0 green:133/255.0 blue:244/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook QTMSwitch
- (void)setOffThumbColor:(id)arg1 {
    // Switch - Off
    arg1 = [UIColor colorWithRed:189/255.0 green:189/255.0 blue:189/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook QTMSwitch
- (void)setOffTrackColor:(id)arg1 {
    // Switch - Track BG
    arg1 = [UIColor colorWithRed:105/255.0 green:105/255.0 blue:105/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UIKBRenderConfig
- (bool)lightKeyboard {
    // KB - Dark
    return 0;
}
%end

%hook UIDevice
- (long long)_keyboardGraphicsQuality {
    // KB - Black
    return 10;
}
%end

%hook YTTopAlignedView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

