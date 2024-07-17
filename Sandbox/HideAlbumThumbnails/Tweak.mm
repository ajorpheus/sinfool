#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$PUAlbumListViewController$_collectionIsHiddenAlbum$(id self, SEL _cmd, id arg1) {
    // Use Crossed Out "/" Image:  Yes=True
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(_collectionIsHiddenAlbum:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$_collectionIsHiddenAlbum$, NULL);
}
