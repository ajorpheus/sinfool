#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUAlbumListViewController$_containsAnyAssets$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(_containsAnyAssets:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$_containsAnyAssets$, NULL);
}
