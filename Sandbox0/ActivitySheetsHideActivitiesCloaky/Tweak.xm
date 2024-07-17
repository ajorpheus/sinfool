#import <UIKit/UIKit.h>

%hook PUMessageActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Message - Photos (Top Row)
    return 0;
}
%end

%hook UIMessageActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Message - Notes (Top Row)
    return 0;
}
%end

%hook PUMailActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Mail - Photos (Top Row)
    return 0;
}
%end

%hook UIMailActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Mail - Notes (Top Row)
    return 0;
}
%end

%hook UIPrintActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Save PDF to iBooks (Top Row) & Print
    return 0;
}
%end

%hook UICopyToPasteboardActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Copy
    return 0;
}
%end

%hook PUDuplicateActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Duplicate
    return 0;
}
%end

%hook PUSlideShowActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Slideshow
    return 0;
}
%end

%hook PUAirPlayActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // AirPlay
    return 0;
}
%end

%hook PUHideActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Hide
    return 0;
}
%end

%hook PUAssignToContactActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Assign to Contact
    return 0;
}
%end

%hook PUWallpaperActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Use as Wallpaper
}
%end

%hook AddBookmarkUIActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Add Bookmark
    return 0;
}
%end

%hook AddToFavoritesUIActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Add to Favorites
    return 0;
}
%end

%hook UIAddToReadingListActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Add to Reading List
    return 0;
}
%end

%hook AddToHomeScreenUIActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Add to HomeScreen
    return 0;
}
%end

%hook AddToSharedLinksUIActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Add to Shared Links
    return 0;
}
%end

%hook _SFFindOnPageUIActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Find on Page
    return 0;
}
%end

%hook _SFRequestDesktopSiteUIActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Request Desktop Site
    return 0;
}
%end

%hook UISaveToCameraRollActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Safe Image(s)
    return 0;
}
%end

%hook UIAssignToContactActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Assign to Contact
    return 0;
}
%end

%hook ICPasswordAddOrRemovePasswordActivity
- (bool)canPerformWithActivityItems:(id)arg1 {
    // Lock Note
    return 0;
}
%end

