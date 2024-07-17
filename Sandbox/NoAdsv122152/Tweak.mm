#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$AdMarvelUtilities$init(id self, SEL _cmd) {
    return NULL;
}

static bool _patched_ftt_meth_$ChatViewController$shouldShowFooterAd(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AdMarvelUtilities = objc_getClass("AdMarvelUtilities");
    MSHookMessageEx(_ftt_class_AdMarvelUtilities, @selector(init), (IMP)_patched_ftt_meth_$AdMarvelUtilities$init, NULL);
    Class _ftt_class_ChatViewController = objc_getClass("ChatViewController");
    MSHookMessageEx(_ftt_class_ChatViewController, @selector(shouldShowFooterAd), (IMP)_patched_ftt_meth_$ChatViewController$shouldShowFooterAd, NULL);
}
