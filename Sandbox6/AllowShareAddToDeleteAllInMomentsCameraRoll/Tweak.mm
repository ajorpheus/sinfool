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

@class PUPhotosGridViewController; @class PUPhotosAlbumViewController; 
static bool (*_logos_orig$_ungrouped$PUPhotosGridViewController$allowSelectAllButton)(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosGridViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton)(_LOGOS_SELF_TYPE_NORMAL PUPhotosAlbumViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosAlbumViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$PUPhotosGridViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosAlbumViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosGridViewController, @selector(allowSelectAllButton), (IMP)&_logos_method$_ungrouped$PUPhotosGridViewController$allowSelectAllButton, (IMP*)&_logos_orig$_ungrouped$PUPhotosGridViewController$allowSelectAllButton);}Class _logos_class$_ungrouped$PUPhotosAlbumViewController = objc_getClass("PUPhotosAlbumViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosAlbumViewController, @selector(allowSelectAllButton), (IMP)&_logos_method$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton, (IMP*)&_logos_orig$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton);}} }
#line 17 "Tweak.xm"
