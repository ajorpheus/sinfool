#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$MusicContentViewController$prefersStatusBarHidden(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MusicContentViewController = objc_getClass("MusicContentViewController");
    MSHookMessageEx(_ftt_class_MusicContentViewController, @selector(prefersStatusBarHidden), (IMP)_patched_ftt_meth_$MusicContentViewController$prefersStatusBarHidden, NULL);
}
