#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$_SBFolderPageElement$gridImage(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SBFolderPageElement = objc_getClass("_SBFolderPageElement");
    MSHookMessageEx(_ftt_class__SBFolderPageElement, @selector(gridImage), (IMP)_patched_ftt_meth_$_SBFolderPageElement$gridImage, NULL);
}
