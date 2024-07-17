#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$PUPhotoBrowserController$_currentFavoriteItemIdentifier(id self, SEL _cmd) {
    // Show "♡" Icon:  Yes=pass-through, No=NULL
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUPhotoBrowserController = objc_getClass("PUPhotoBrowserController");
    MSHookMessageEx(_ftt_class_PUPhotoBrowserController, @selector(_currentFavoriteItemIdentifier), (IMP)_patched_ftt_meth_$PUPhotoBrowserController$_currentFavoriteItemIdentifier, NULL);
}
