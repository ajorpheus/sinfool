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

@class PUTabbedLibraryViewController; @class PUMomentsZoomLevelManager; @class PUGridZoomLevelInfo; 
static bool (*_logos_orig$_ungrouped$PUGridZoomLevelInfo$wantsAutomaticContentOffsetAdjustment)(_LOGOS_SELF_TYPE_NORMAL PUGridZoomLevelInfo* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUGridZoomLevelInfo$wantsAutomaticContentOffsetAdjustment(_LOGOS_SELF_TYPE_NORMAL PUGridZoomLevelInfo* _LOGOS_SELF_CONST, SEL); static unsigned long long (*_logos_orig$_ungrouped$PUMomentsZoomLevelManager$preferredDefaultZoomLevel)(_LOGOS_SELF_TYPE_NORMAL PUMomentsZoomLevelManager* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$PUMomentsZoomLevelManager$preferredDefaultZoomLevel(_LOGOS_SELF_TYPE_NORMAL PUMomentsZoomLevelManager* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$PUTabbedLibraryViewController$_contentModeForNavigationController$)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL, id); static int _logos_method$_ungrouped$PUTabbedLibraryViewController$_contentModeForNavigationController$(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$PUGridZoomLevelInfo$wantsAutomaticContentOffsetAdjustment(_LOGOS_SELF_TYPE_NORMAL PUGridZoomLevelInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static unsigned long long _logos_method$_ungrouped$PUMomentsZoomLevelManager$preferredDefaultZoomLevel(_LOGOS_SELF_TYPE_NORMAL PUMomentsZoomLevelManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 2;
}



static int _logos_method$_ungrouped$PUTabbedLibraryViewController$_contentModeForNavigationController$(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUGridZoomLevelInfo = objc_getClass("PUGridZoomLevelInfo"); { MSHookMessageEx(_logos_class$_ungrouped$PUGridZoomLevelInfo, @selector(wantsAutomaticContentOffsetAdjustment), (IMP)&_logos_method$_ungrouped$PUGridZoomLevelInfo$wantsAutomaticContentOffsetAdjustment, (IMP*)&_logos_orig$_ungrouped$PUGridZoomLevelInfo$wantsAutomaticContentOffsetAdjustment);}Class _logos_class$_ungrouped$PUMomentsZoomLevelManager = objc_getClass("PUMomentsZoomLevelManager"); { MSHookMessageEx(_logos_class$_ungrouped$PUMomentsZoomLevelManager, @selector(preferredDefaultZoomLevel), (IMP)&_logos_method$_ungrouped$PUMomentsZoomLevelManager$preferredDefaultZoomLevel, (IMP*)&_logos_orig$_ungrouped$PUMomentsZoomLevelManager$preferredDefaultZoomLevel);}Class _logos_class$_ungrouped$PUTabbedLibraryViewController = objc_getClass("PUTabbedLibraryViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewController, @selector(_contentModeForNavigationController:), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewController$_contentModeForNavigationController$, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewController$_contentModeForNavigationController$);}} }
#line 21 "Tweak.xm"
