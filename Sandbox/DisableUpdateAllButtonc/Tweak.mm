#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$ASUpdatesViewController$_isUpdateAllEnabled(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ASUpdatesViewController = objc_getClass("ASUpdatesViewController");
    MSHookMessageEx(_ftt_class_ASUpdatesViewController, @selector(_isUpdateAllEnabled), (IMP)_patched_ftt_meth_$ASUpdatesViewController$_isUpdateAllEnabled, NULL);
}
