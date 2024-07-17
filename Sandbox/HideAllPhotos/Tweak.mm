#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$PUAlbumListViewController$numberOfVisualSectionsForSectionedGridLayout$(id self, SEL _cmd, id arg1) {
    // Hide "My Albums": (Yes=1, No=P)
    return 1;
}

static unsigned long long _patched_ftt_meth_$PHFetchOptions$includeAssetSourceTypes(id self, SEL _cmd) {
    return 2;
}

static void (*_orig_ftt_meth_$PUAlbumListCellContentView$setSubtitle$animated$)(id, SEL, id, bool);
static void _patched_ftt_meth_$PUAlbumListCellContentView$setSubtitle$animated$(id self, SEL _cmd, id arg1, bool arg2) {
    arg1 = @"0";
    _orig_ftt_meth_$PUAlbumListCellContentView$setSubtitle$animated$(self, _cmd, arg1, arg2);
}

static unsigned long long _patched_ftt_meth_$PUSearchResultsDataSource$numberOfSearchResults(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(numberOfVisualSectionsForSectionedGridLayout:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$numberOfVisualSectionsForSectionedGridLayout$, NULL);
    Class _ftt_class_PHFetchOptions = objc_getClass("PHFetchOptions");
    MSHookMessageEx(_ftt_class_PHFetchOptions, @selector(includeAssetSourceTypes), (IMP)_patched_ftt_meth_$PHFetchOptions$includeAssetSourceTypes, NULL);
    Class _ftt_class_PUAlbumListCellContentView = objc_getClass("PUAlbumListCellContentView");
    MSHookMessageEx(_ftt_class_PUAlbumListCellContentView, @selector(setSubtitle:animated:), (IMP)_patched_ftt_meth_$PUAlbumListCellContentView$setSubtitle$animated$, (IMP *)_orig_ftt_meth_$PUAlbumListCellContentView$setSubtitle$animated$);
    Class _ftt_class_PUSearchResultsDataSource = objc_getClass("PUSearchResultsDataSource");
    MSHookMessageEx(_ftt_class_PUSearchResultsDataSource, @selector(numberOfSearchResults), (IMP)_patched_ftt_meth_$PUSearchResultsDataSource$numberOfSearchResults, NULL);
}
