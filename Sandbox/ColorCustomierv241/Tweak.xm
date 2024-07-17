#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIStyleAttributes
- (id)initWithRequest:(id)arg1 backgroundColor:(id)arg2 foregroundColor:(id)arg3 {
    // Status Bar - (Arg#2): Background, (Arg#3): Foreground
    arg3 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook UINavigationBar
- (void)setBarTintColor:(id)arg1 {
    // Nav Bar
    arg1 = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:242/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UINavigationBar
- (void)setTintColor:(id)arg1 {
    // Nav Bar Button (Left)
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UIButtonContent
- (void)setImageColor:(id)arg1 {
    // Nav Bar Image
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook beamPatchedSwiftClassNameButtonBar
- (void)setTintColor:(id)arg1 {
    // Tool Bar Text
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook beamPatchedSwiftClassNameScrollableButtonBar
- (void)setTintColor:(id)arg1 {
    // Scrollable Tool Bar Text
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UITableViewHeaderFooterViewLabel
- (void)setTextColor:(id)arg1 {
    // Header Label
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITableViewIndex
- (void)setIndexColor:(id)arg1 {
    // Side Bar - Index Text
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBarButton
- (void)_showSelectedIndicator:(bool)arg1 changeSelection:(bool)arg2 {
    // Tab Bar - (Arg#1): All Unselected Color = False
    arg2 = 1;
    arg1 = 0;
    %orig;
}
%end

%hook UIView
- (bool)_ancestorDefinesTintColor {
    // Text Tabs When Searching Sub Reddit 
    return 0;
}
%end

%hook UITabBarButton
- (void)_setContentTintColor:(id)arg1 forState:(unsigned long long)arg2 {
    // Tab Bar - Unselected
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITableViewCellSelectedBackground
- (void)setSelectionTintColor:(id)arg1 {
    // Sub Reddit Cell Selection
    arg1 = [UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook beamPatchedSwiftClassNameBeamButton
- (void)setBackgroundColor:(id)arg1 {
    // Button
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITextInputTraits
- (void)setInsertionPointColor:(id)arg1 {
    // Cursor
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UILabel
- (void)_setTextColorFollowsTintColor:(bool)arg1 {
    // UIAlert - TextColorFollowsTintColor
    arg1 = 0;
    %orig;
}
%end

%hook UILabel
- (void)setTextColor:(id)arg1 {
    // Text Color - Overrides Other Labels (Delete This Entry For Different Results)
    arg1 = [UIColor colorWithRed:39/255.0 green:39/255.0 blue:39/255.0 alpha:255/255.0];
    %orig;
}
%end

%ctor {
    %init(beamPatchedSwiftClassNameButtonBar = objc_getClass("beam.ButtonBar"),
        beamPatchedSwiftClassNameScrollableButtonBar = objc_getClass("beam.ScrollableButtonBar"),
        beamPatchedSwiftClassNameBeamButton = objc_getClass("beam.BeamButton"));

}
