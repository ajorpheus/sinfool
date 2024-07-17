#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PLPhotoTileViewController$setZoomScale$)(id, SEL, float);
static void _patched_ftt_meth_$PLPhotoTileViewController$setZoomScale$(id self, SEL _cmd, float arg1) {
    // •
    arg1 = 0;
    _orig_ftt_meth_$PLPhotoTileViewController$setZoomScale$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PLPhotoTileViewController = objc_getClass("PLPhotoTileViewController");
    MSHookMessageEx(_ftt_class_PLPhotoTileViewController, @selector(setZoomScale:), (IMP)_patched_ftt_meth_$PLPhotoTileViewController$setZoomScale$, (IMP *)_orig_ftt_meth_$PLPhotoTileViewController$setZoomScale$);
}
