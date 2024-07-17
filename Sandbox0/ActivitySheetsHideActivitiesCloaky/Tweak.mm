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

@class PUAssignToContactActivity; @class PUMessageActivity; @class UICopyToPasteboardActivity; @class AddToHomeScreenUIActivity; @class PUDuplicateActivity; @class AddToSharedLinksUIActivity; @class UIAssignToContactActivity; @class UIAddToReadingListActivity; @class UIPrintActivity; @class UIMessageActivity; @class _SFFindOnPageUIActivity; @class PUAirPlayActivity; @class UISaveToCameraRollActivity; @class AddBookmarkUIActivity; @class PUWallpaperActivity; @class _SFRequestDesktopSiteUIActivity; @class UIMailActivity; @class ICPasswordAddOrRemovePasswordActivity; @class AddToFavoritesUIActivity; @class PUHideActivity; @class PUSlideShowActivity; @class PUMailActivity; 
static bool (*_logos_orig$_ungrouped$PUMessageActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL PUMessageActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUMessageActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUMessageActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UIMessageActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL UIMessageActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$UIMessageActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIMessageActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUMailActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL PUMailActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUMailActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUMailActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UIMailActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL UIMailActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$UIMailActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIMailActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UIPrintActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL UIPrintActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$UIPrintActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIPrintActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UICopyToPasteboardActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL UICopyToPasteboardActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$UICopyToPasteboardActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UICopyToPasteboardActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUDuplicateActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL PUDuplicateActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUDuplicateActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUDuplicateActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUSlideShowActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL PUSlideShowActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUSlideShowActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUSlideShowActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUAirPlayActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL PUAirPlayActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUAirPlayActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUAirPlayActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUHideActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL PUHideActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUHideActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUHideActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUAssignToContactActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL PUAssignToContactActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUAssignToContactActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUAssignToContactActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUWallpaperActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL PUWallpaperActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUWallpaperActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUWallpaperActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$AddBookmarkUIActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL AddBookmarkUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$AddBookmarkUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL AddBookmarkUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$AddToFavoritesUIActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL AddToFavoritesUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$AddToFavoritesUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL AddToFavoritesUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UIAddToReadingListActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL UIAddToReadingListActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$UIAddToReadingListActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIAddToReadingListActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$AddToHomeScreenUIActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL AddToHomeScreenUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$AddToHomeScreenUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL AddToHomeScreenUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$AddToSharedLinksUIActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL AddToSharedLinksUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$AddToSharedLinksUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL AddToSharedLinksUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$_SFFindOnPageUIActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL _SFFindOnPageUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$_SFFindOnPageUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL _SFFindOnPageUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$_SFRequestDesktopSiteUIActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL _SFRequestDesktopSiteUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$_SFRequestDesktopSiteUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL _SFRequestDesktopSiteUIActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UISaveToCameraRollActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL UISaveToCameraRollActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$UISaveToCameraRollActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UISaveToCameraRollActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$UIAssignToContactActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL UIAssignToContactActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$UIAssignToContactActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIAssignToContactActivity* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$ICPasswordAddOrRemovePasswordActivity$canPerformWithActivityItems$)(_LOGOS_SELF_TYPE_NORMAL ICPasswordAddOrRemovePasswordActivity* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$ICPasswordAddOrRemovePasswordActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL ICPasswordAddOrRemovePasswordActivity* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$PUMessageActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUMessageActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UIMessageActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIMessageActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUMailActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUMailActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UIMailActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIMailActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UIPrintActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIPrintActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UICopyToPasteboardActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UICopyToPasteboardActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUDuplicateActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUDuplicateActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUSlideShowActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUSlideShowActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUAirPlayActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUAirPlayActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUHideActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUHideActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUAssignToContactActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUAssignToContactActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUWallpaperActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL PUWallpaperActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
}



static bool _logos_method$_ungrouped$AddBookmarkUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL AddBookmarkUIActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$AddToFavoritesUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL AddToFavoritesUIActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UIAddToReadingListActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIAddToReadingListActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$AddToHomeScreenUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL AddToHomeScreenUIActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$AddToSharedLinksUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL AddToSharedLinksUIActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$_SFFindOnPageUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL _SFFindOnPageUIActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$_SFRequestDesktopSiteUIActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL _SFRequestDesktopSiteUIActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UISaveToCameraRollActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UISaveToCameraRollActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$UIAssignToContactActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL UIAssignToContactActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$ICPasswordAddOrRemovePasswordActivity$canPerformWithActivityItems$(_LOGOS_SELF_TYPE_NORMAL ICPasswordAddOrRemovePasswordActivity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUMessageActivity = objc_getClass("PUMessageActivity"); { MSHookMessageEx(_logos_class$_ungrouped$PUMessageActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$PUMessageActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$PUMessageActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$UIMessageActivity = objc_getClass("UIMessageActivity"); { MSHookMessageEx(_logos_class$_ungrouped$UIMessageActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$UIMessageActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$UIMessageActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$PUMailActivity = objc_getClass("PUMailActivity"); { MSHookMessageEx(_logos_class$_ungrouped$PUMailActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$PUMailActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$PUMailActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$UIMailActivity = objc_getClass("UIMailActivity"); { MSHookMessageEx(_logos_class$_ungrouped$UIMailActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$UIMailActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$UIMailActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$UIPrintActivity = objc_getClass("UIPrintActivity"); { MSHookMessageEx(_logos_class$_ungrouped$UIPrintActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$UIPrintActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$UIPrintActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$UICopyToPasteboardActivity = objc_getClass("UICopyToPasteboardActivity"); { MSHookMessageEx(_logos_class$_ungrouped$UICopyToPasteboardActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$UICopyToPasteboardActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$UICopyToPasteboardActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$PUDuplicateActivity = objc_getClass("PUDuplicateActivity"); { MSHookMessageEx(_logos_class$_ungrouped$PUDuplicateActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$PUDuplicateActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$PUDuplicateActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$PUSlideShowActivity = objc_getClass("PUSlideShowActivity"); { MSHookMessageEx(_logos_class$_ungrouped$PUSlideShowActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$PUSlideShowActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$PUSlideShowActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$PUAirPlayActivity = objc_getClass("PUAirPlayActivity"); { MSHookMessageEx(_logos_class$_ungrouped$PUAirPlayActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$PUAirPlayActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$PUAirPlayActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$PUHideActivity = objc_getClass("PUHideActivity"); { MSHookMessageEx(_logos_class$_ungrouped$PUHideActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$PUHideActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$PUHideActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$PUAssignToContactActivity = objc_getClass("PUAssignToContactActivity"); { MSHookMessageEx(_logos_class$_ungrouped$PUAssignToContactActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$PUAssignToContactActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$PUAssignToContactActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$PUWallpaperActivity = objc_getClass("PUWallpaperActivity"); { MSHookMessageEx(_logos_class$_ungrouped$PUWallpaperActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$PUWallpaperActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$PUWallpaperActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$AddBookmarkUIActivity = objc_getClass("AddBookmarkUIActivity"); { MSHookMessageEx(_logos_class$_ungrouped$AddBookmarkUIActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$AddBookmarkUIActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$AddBookmarkUIActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$AddToFavoritesUIActivity = objc_getClass("AddToFavoritesUIActivity"); { MSHookMessageEx(_logos_class$_ungrouped$AddToFavoritesUIActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$AddToFavoritesUIActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$AddToFavoritesUIActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$UIAddToReadingListActivity = objc_getClass("UIAddToReadingListActivity"); { MSHookMessageEx(_logos_class$_ungrouped$UIAddToReadingListActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$UIAddToReadingListActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$UIAddToReadingListActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$AddToHomeScreenUIActivity = objc_getClass("AddToHomeScreenUIActivity"); { MSHookMessageEx(_logos_class$_ungrouped$AddToHomeScreenUIActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$AddToHomeScreenUIActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$AddToHomeScreenUIActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$AddToSharedLinksUIActivity = objc_getClass("AddToSharedLinksUIActivity"); { MSHookMessageEx(_logos_class$_ungrouped$AddToSharedLinksUIActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$AddToSharedLinksUIActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$AddToSharedLinksUIActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$_SFFindOnPageUIActivity = objc_getClass("_SFFindOnPageUIActivity"); { MSHookMessageEx(_logos_class$_ungrouped$_SFFindOnPageUIActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$_SFFindOnPageUIActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$_SFFindOnPageUIActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$_SFRequestDesktopSiteUIActivity = objc_getClass("_SFRequestDesktopSiteUIActivity"); { MSHookMessageEx(_logos_class$_ungrouped$_SFRequestDesktopSiteUIActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$_SFRequestDesktopSiteUIActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$_SFRequestDesktopSiteUIActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$UISaveToCameraRollActivity = objc_getClass("UISaveToCameraRollActivity"); { MSHookMessageEx(_logos_class$_ungrouped$UISaveToCameraRollActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$UISaveToCameraRollActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$UISaveToCameraRollActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$UIAssignToContactActivity = objc_getClass("UIAssignToContactActivity"); { MSHookMessageEx(_logos_class$_ungrouped$UIAssignToContactActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$UIAssignToContactActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$UIAssignToContactActivity$canPerformWithActivityItems$);}Class _logos_class$_ungrouped$ICPasswordAddOrRemovePasswordActivity = objc_getClass("ICPasswordAddOrRemovePasswordActivity"); { MSHookMessageEx(_logos_class$_ungrouped$ICPasswordAddOrRemovePasswordActivity, @selector(canPerformWithActivityItems:), (IMP)&_logos_method$_ungrouped$ICPasswordAddOrRemovePasswordActivity$canPerformWithActivityItems$, (IMP*)&_logos_orig$_ungrouped$ICPasswordAddOrRemovePasswordActivity$canPerformWithActivityItems$);}} }
#line 156 "Tweak.xm"
