#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUAlbumListViewController$canReorderCollection$(id self, SEL _cmd, id arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(canReorderCollection:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$canReorderCollection$, NULL);
}
