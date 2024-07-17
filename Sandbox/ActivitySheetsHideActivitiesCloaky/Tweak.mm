#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUMessageActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Message - Photos (Top Row)
    return 0;
}

static bool _patched_ftt_meth_$UIMessageActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Message - Notes (Top Row)
    return 0;
}

static bool _patched_ftt_meth_$PUMailActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Mail - Photos (Top Row)
    return 0;
}

static bool _patched_ftt_meth_$UIMailActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Mail - Notes (Top Row)
    return 0;
}

static bool _patched_ftt_meth_$UIPrintActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Save PDF to iBooks (Top Row) & Print
    return 0;
}

static bool _patched_ftt_meth_$UICopyToPasteboardActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Copy
    return 0;
}

static bool _patched_ftt_meth_$PUDuplicateActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Duplicate
    return 0;
}

static bool _patched_ftt_meth_$PUSlideShowActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Slideshow
    return 0;
}

static bool _patched_ftt_meth_$PUAirPlayActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // AirPlay
    return 0;
}

static bool _patched_ftt_meth_$PUHideActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Hide
    return 0;
}

static bool _patched_ftt_meth_$PUAssignToContactActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Assign to Contact
    return 0;
}

static bool _patched_ftt_meth_$PUWallpaperActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Use as Wallpaper
}

static bool _patched_ftt_meth_$AddBookmarkUIActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Add Bookmark
    return 0;
}

static bool _patched_ftt_meth_$AddToFavoritesUIActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Add to Favorites
    return 0;
}

static bool _patched_ftt_meth_$UIAddToReadingListActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Add to Reading List
    return 0;
}

static bool _patched_ftt_meth_$AddToHomeScreenUIActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Add to HomeScreen
    return 0;
}

static bool _patched_ftt_meth_$AddToSharedLinksUIActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Add to Shared Links
    return 0;
}

static bool _patched_ftt_meth_$_SFFindOnPageUIActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Find on Page
    return 0;
}

static bool _patched_ftt_meth_$_SFRequestDesktopSiteUIActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Request Desktop Site
    return 0;
}

static bool _patched_ftt_meth_$UISaveToCameraRollActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Safe Image(s)
    return 0;
}

static bool _patched_ftt_meth_$UIAssignToContactActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Assign to Contact
    return 0;
}

static bool _patched_ftt_meth_$ICPasswordAddOrRemovePasswordActivity$canPerformWithActivityItems$(id self, SEL _cmd, id arg1) {
    // Lock Note
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUMessageActivity = objc_getClass("PUMessageActivity");
    MSHookMessageEx(_ftt_class_PUMessageActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$PUMessageActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_UIMessageActivity = objc_getClass("UIMessageActivity");
    MSHookMessageEx(_ftt_class_UIMessageActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$UIMessageActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_PUMailActivity = objc_getClass("PUMailActivity");
    MSHookMessageEx(_ftt_class_PUMailActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$PUMailActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_UIMailActivity = objc_getClass("UIMailActivity");
    MSHookMessageEx(_ftt_class_UIMailActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$UIMailActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_UIPrintActivity = objc_getClass("UIPrintActivity");
    MSHookMessageEx(_ftt_class_UIPrintActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$UIPrintActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_UICopyToPasteboardActivity = objc_getClass("UICopyToPasteboardActivity");
    MSHookMessageEx(_ftt_class_UICopyToPasteboardActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$UICopyToPasteboardActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_PUDuplicateActivity = objc_getClass("PUDuplicateActivity");
    MSHookMessageEx(_ftt_class_PUDuplicateActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$PUDuplicateActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_PUSlideShowActivity = objc_getClass("PUSlideShowActivity");
    MSHookMessageEx(_ftt_class_PUSlideShowActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$PUSlideShowActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_PUAirPlayActivity = objc_getClass("PUAirPlayActivity");
    MSHookMessageEx(_ftt_class_PUAirPlayActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$PUAirPlayActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_PUHideActivity = objc_getClass("PUHideActivity");
    MSHookMessageEx(_ftt_class_PUHideActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$PUHideActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_PUAssignToContactActivity = objc_getClass("PUAssignToContactActivity");
    MSHookMessageEx(_ftt_class_PUAssignToContactActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$PUAssignToContactActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_PUWallpaperActivity = objc_getClass("PUWallpaperActivity");
    MSHookMessageEx(_ftt_class_PUWallpaperActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$PUWallpaperActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_AddBookmarkUIActivity = objc_getClass("AddBookmarkUIActivity");
    MSHookMessageEx(_ftt_class_AddBookmarkUIActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$AddBookmarkUIActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_AddToFavoritesUIActivity = objc_getClass("AddToFavoritesUIActivity");
    MSHookMessageEx(_ftt_class_AddToFavoritesUIActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$AddToFavoritesUIActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_UIAddToReadingListActivity = objc_getClass("UIAddToReadingListActivity");
    MSHookMessageEx(_ftt_class_UIAddToReadingListActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$UIAddToReadingListActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_AddToHomeScreenUIActivity = objc_getClass("AddToHomeScreenUIActivity");
    MSHookMessageEx(_ftt_class_AddToHomeScreenUIActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$AddToHomeScreenUIActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_AddToSharedLinksUIActivity = objc_getClass("AddToSharedLinksUIActivity");
    MSHookMessageEx(_ftt_class_AddToSharedLinksUIActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$AddToSharedLinksUIActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class__SFFindOnPageUIActivity = objc_getClass("_SFFindOnPageUIActivity");
    MSHookMessageEx(_ftt_class__SFFindOnPageUIActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$_SFFindOnPageUIActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class__SFRequestDesktopSiteUIActivity = objc_getClass("_SFRequestDesktopSiteUIActivity");
    MSHookMessageEx(_ftt_class__SFRequestDesktopSiteUIActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$_SFRequestDesktopSiteUIActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_UISaveToCameraRollActivity = objc_getClass("UISaveToCameraRollActivity");
    MSHookMessageEx(_ftt_class_UISaveToCameraRollActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$UISaveToCameraRollActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_UIAssignToContactActivity = objc_getClass("UIAssignToContactActivity");
    MSHookMessageEx(_ftt_class_UIAssignToContactActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$UIAssignToContactActivity$canPerformWithActivityItems$, NULL);
    Class _ftt_class_ICPasswordAddOrRemovePasswordActivity = objc_getClass("ICPasswordAddOrRemovePasswordActivity");
    MSHookMessageEx(_ftt_class_ICPasswordAddOrRemovePasswordActivity, @selector(canPerformWithActivityItems:), (IMP)_patched_ftt_meth_$ICPasswordAddOrRemovePasswordActivity$canPerformWithActivityItems$, NULL);
}
