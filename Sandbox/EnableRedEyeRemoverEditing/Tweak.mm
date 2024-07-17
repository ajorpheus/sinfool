#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUPhotoEditViewController$_shouldDisplayRedEyeTool(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUPhotoEditViewController = objc_getClass("PUPhotoEditViewController");
    MSHookMessageEx(_ftt_class_PUPhotoEditViewController, @selector(_shouldDisplayRedEyeTool), (IMP)_patched_ftt_meth_$PUPhotoEditViewController$_shouldDisplayRedEyeTool, NULL);
}
