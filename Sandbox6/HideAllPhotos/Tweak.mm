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

@class PHFetchOptions; @class PUAlbumListCellContentView; @class PUAlbumListViewController; @class PUSearchResultsDataSource; 
static long long (*_logos_orig$_ungrouped$PUAlbumListViewController$numberOfVisualSectionsForSectionedGridLayout$)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id); static long long _logos_method$_ungrouped$PUAlbumListViewController$numberOfVisualSectionsForSectionedGridLayout$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id); static unsigned long long (*_logos_orig$_ungrouped$PHFetchOptions$includeAssetSourceTypes)(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$PHFetchOptions$includeAssetSourceTypes(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUAlbumListCellContentView$setSubtitle$animated$)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListCellContentView* _LOGOS_SELF_CONST, SEL, id, bool); static void _logos_method$_ungrouped$PUAlbumListCellContentView$setSubtitle$animated$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListCellContentView* _LOGOS_SELF_CONST, SEL, id, bool); static unsigned long long (*_logos_orig$_ungrouped$PUSearchResultsDataSource$numberOfSearchResults)(_LOGOS_SELF_TYPE_NORMAL PUSearchResultsDataSource* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$PUSearchResultsDataSource$numberOfSearchResults(_LOGOS_SELF_TYPE_NORMAL PUSearchResultsDataSource* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$PUAlbumListViewController$numberOfVisualSectionsForSectionedGridLayout$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}



static unsigned long long _logos_method$_ungrouped$PHFetchOptions$includeAssetSourceTypes(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 2;
}



static void _logos_method$_ungrouped$PUAlbumListCellContentView$setSubtitle$animated$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListCellContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, bool arg2) {
    arg1 = @"0";
    _logos_orig$_ungrouped$PUAlbumListCellContentView$setSubtitle$animated$(self, _cmd, arg1, arg2);
}



static unsigned long long _logos_method$_ungrouped$PUSearchResultsDataSource$numberOfSearchResults(_LOGOS_SELF_TYPE_NORMAL PUSearchResultsDataSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUAlbumListViewController = objc_getClass("PUAlbumListViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(numberOfVisualSectionsForSectionedGridLayout:), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$numberOfVisualSectionsForSectionedGridLayout$, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$numberOfVisualSectionsForSectionedGridLayout$);}Class _logos_class$_ungrouped$PHFetchOptions = objc_getClass("PHFetchOptions"); { MSHookMessageEx(_logos_class$_ungrouped$PHFetchOptions, @selector(includeAssetSourceTypes), (IMP)&_logos_method$_ungrouped$PHFetchOptions$includeAssetSourceTypes, (IMP*)&_logos_orig$_ungrouped$PHFetchOptions$includeAssetSourceTypes);}Class _logos_class$_ungrouped$PUAlbumListCellContentView = objc_getClass("PUAlbumListCellContentView"); { MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListCellContentView, @selector(setSubtitle:animated:), (IMP)&_logos_method$_ungrouped$PUAlbumListCellContentView$setSubtitle$animated$, (IMP*)&_logos_orig$_ungrouped$PUAlbumListCellContentView$setSubtitle$animated$);}Class _logos_class$_ungrouped$PUSearchResultsDataSource = objc_getClass("PUSearchResultsDataSource"); { MSHookMessageEx(_logos_class$_ungrouped$PUSearchResultsDataSource, @selector(numberOfSearchResults), (IMP)&_logos_method$_ungrouped$PUSearchResultsDataSource$numberOfSearchResults, (IMP*)&_logos_orig$_ungrouped$PUSearchResultsDataSource$numberOfSearchResults);}} }
#line 29 "Tweak.xm"
