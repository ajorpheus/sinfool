#import <UIKit/UIKit.h>

%hook _SFNavigationBar
- (bool)isUsingLightControls {
    // Status/Nav Bar Uses White Controls
    return 1;
}
%end

%hook SFCrossfadingLabel
- (void)setFromColor:(id)arg1 {
    // URL Site Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook BookmarkFavoritesCollectionView
- (void)setBackgroundColor:(id)arg1 {
    // Background Color
    arg1 = [UIColor colorWithRed:26/255.0 green:26/255.0 blue:26/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _SFSiteIconView
- (void)_setGlyph:(id)arg1 withBackgroundColor:(id)arg2 {
    // Folder Icon Color
    arg2 = [UIColor colorWithRed:42/255.0 green:42/255.0 blue:42/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _SFSiteIconView
- (void)_setMonogramWithString:(id)arg1 backgroundColor:(id)arg2 {
    // Site Icon Color
    arg2 = [UIColor colorWithRed:42/255.0 green:42/255.0 blue:42/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook VibrantLabelView
- (void)setNonVibrantColor:(id)arg1 {
    // Icon Label Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook VibrantLabelView
- (void)setUsesVibrantEffect:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

