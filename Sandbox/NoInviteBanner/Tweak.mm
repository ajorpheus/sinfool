#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$ChatViewController$inviteBanner(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ChatViewController = objc_getClass("ChatViewController");
    MSHookMessageEx(_ftt_class_ChatViewController, @selector(inviteBanner), (IMP)_patched_ftt_meth_$ChatViewController$inviteBanner, NULL);
}
