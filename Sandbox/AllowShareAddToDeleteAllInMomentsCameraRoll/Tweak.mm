#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUPhotosGridViewController$allowSelectAllButton(id self, SEL _cmd) {
    // Allow In Moments
    return 1;
}

static bool _patched_ftt_meth_$PUPhotosAlbumViewController$allowSelectAllButton(id self, SEL _cmd) {
    // Allow In Camera Roll
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController");
    MSHookMessageEx(_ftt_class_PUPhotosGridViewController, @selector(allowSelectAllButton), (IMP)_patched_ftt_meth_$PUPhotosGridViewController$allowSelectAllButton, NULL);
    Class _ftt_class_PUPhotosAlbumViewController = objc_getClass("PUPhotosAlbumViewController");
    MSHookMessageEx(_ftt_class_PUPhotosAlbumViewController, @selector(allowSelectAllButton), (IMP)_patched_ftt_meth_$PUPhotosAlbumViewController$allowSelectAllButton, NULL);
}
