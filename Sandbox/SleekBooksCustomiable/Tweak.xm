#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIStyleAttributes
- (BOOL)isTranslucent {
    // •
    return 1;
}
%end

%hook IMThemeBookshelf
- (void)setSearchBackgroundColor:(id)arg1 {
    // Search Bar
    arg1 = [UIColor colorWithRed:18/255.0 green:110/255.0 blue:110/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook BKBlurryWallpaperView
- (void)setScrimColor:(id)arg1 {
    // Wallpaper
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBar
- (void)setTintColor:(id)arg1 {
    // Tab Bar Image (Selected)
    arg1 = [UIColor colorWithRed:23/255.0 green:143/255.0 blue:143/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBarButton
- (void)_setContentTintColor:(id)arg1 forState:(unsigned int)arg2 {
    // Tab Bar Image (Unselected)
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBarButton
- (id)initWithImage:(id)arg1 selectedImage:(id)arg2 label:(id)arg3 withInsets:(UIEdgeInsets)arg4 {
    // Hide Tab Bar Items:  [NULL=Hide] (Arg#1):Image, (Arg#3):Label
    arg3 = NULL;
    return %orig;
}
%end

%hook UITabBar
- (BOOL)_backgroundNeedsUpdate {
    // Hide Tab Bar Background:	Yes=FALSE
    return 0;
}
%end

