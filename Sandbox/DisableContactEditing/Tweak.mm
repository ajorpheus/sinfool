#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$ABContactViewController$allowsEditing(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$ABContactViewController$allowsSendMessage(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$ABContactViewController$allowsSharing(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$ABContactViewController$allowsContactBlocking(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$ABContactViewController$allowsAddToFavorites(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ABContactViewController = objc_getClass("ABContactViewController");
    MSHookMessageEx(_ftt_class_ABContactViewController, @selector(allowsEditing), (IMP)_patched_ftt_meth_$ABContactViewController$allowsEditing, NULL);
    MSHookMessageEx(_ftt_class_ABContactViewController, @selector(allowsSendMessage), (IMP)_patched_ftt_meth_$ABContactViewController$allowsSendMessage, NULL);
    MSHookMessageEx(_ftt_class_ABContactViewController, @selector(allowsSharing), (IMP)_patched_ftt_meth_$ABContactViewController$allowsSharing, NULL);
    MSHookMessageEx(_ftt_class_ABContactViewController, @selector(allowsContactBlocking), (IMP)_patched_ftt_meth_$ABContactViewController$allowsContactBlocking, NULL);
    MSHookMessageEx(_ftt_class_ABContactViewController, @selector(allowsAddToFavorites), (IMP)_patched_ftt_meth_$ABContactViewController$allowsAddToFavorites, NULL);
}
