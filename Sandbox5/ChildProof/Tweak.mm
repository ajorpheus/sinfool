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

@class PUAlbumListViewController; @class UIToolbarButton; @class PUCloudSharedAlbumViewController; @class PUPhotosGridViewController; @class PUDeletePhotosActionController; 
static void (*_logos_orig$_ungrouped$UIToolbarButton$setEnabled$)(_LOGOS_SELF_TYPE_NORMAL UIToolbarButton* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UIToolbarButton$setEnabled$(_LOGOS_SELF_TYPE_NORMAL UIToolbarButton* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$PUAlbumListViewController$canDeleteCollection$)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUAlbumListViewController$canDeleteCollection$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUCloudSharedAlbumViewController$canDeleteContent)(_LOGOS_SELF_TYPE_NORMAL PUCloudSharedAlbumViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUCloudSharedAlbumViewController$canDeleteContent(_LOGOS_SELF_TYPE_NORMAL PUCloudSharedAlbumViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotosGridViewController$canDeleteContent)(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosGridViewController$canDeleteContent(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation)(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$)(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIToolbarButton$setEnabled$(_LOGOS_SELF_TYPE_NORMAL UIToolbarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$UIToolbarButton$setEnabled$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$PUAlbumListViewController$canDeleteCollection$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}



static bool _logos_method$_ungrouped$PUCloudSharedAlbumViewController$canDeleteContent(_LOGOS_SELF_TYPE_NORMAL PUCloudSharedAlbumViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$PUPhotosGridViewController$canDeleteContent(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIToolbarButton = objc_getClass("UIToolbarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UIToolbarButton, @selector(setEnabled:), (IMP)&_logos_method$_ungrouped$UIToolbarButton$setEnabled$, (IMP*)&_logos_orig$_ungrouped$UIToolbarButton$setEnabled$);}Class _logos_class$_ungrouped$PUAlbumListViewController = objc_getClass("PUAlbumListViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(canDeleteCollection:), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$canDeleteCollection$, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$canDeleteCollection$);}Class _logos_class$_ungrouped$PUCloudSharedAlbumViewController = objc_getClass("PUCloudSharedAlbumViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUCloudSharedAlbumViewController, @selector(canDeleteContent), (IMP)&_logos_method$_ungrouped$PUCloudSharedAlbumViewController$canDeleteContent, (IMP*)&_logos_orig$_ungrouped$PUCloudSharedAlbumViewController$canDeleteContent);}Class _logos_class$_ungrouped$PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosGridViewController, @selector(canDeleteContent), (IMP)&_logos_method$_ungrouped$PUPhotosGridViewController$canDeleteContent, (IMP*)&_logos_orig$_ungrouped$PUPhotosGridViewController$canDeleteContent);}Class _logos_class$_ungrouped$PUDeletePhotosActionController = objc_getClass("PUDeletePhotosActionController"); { MSHookMessageEx(_logos_class$_ungrouped$PUDeletePhotosActionController, @selector(shouldSkipDeleteConfirmation), (IMP)&_logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation, (IMP*)&_logos_orig$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation);}{ MSHookMessageEx(_logos_class$_ungrouped$PUDeletePhotosActionController, @selector(_handleFinalUserDecisionShouldDelete:), (IMP)&_logos_method$_ungrouped$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$, (IMP*)&_logos_orig$_ungrouped$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$);}} }
#line 42 "Tweak.xm"
