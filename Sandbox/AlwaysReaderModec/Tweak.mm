#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$BrowserController$readerShouldBeShownIfPossible(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$TabDocument$shouldActivateReaderWhenAvailable(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BrowserController = objc_getClass("BrowserController");
    MSHookMessageEx(_ftt_class_BrowserController, @selector(readerShouldBeShownIfPossible), (IMP)_patched_ftt_meth_$BrowserController$readerShouldBeShownIfPossible, NULL);
    Class _ftt_class_TabDocument = objc_getClass("TabDocument");
    MSHookMessageEx(_ftt_class_TabDocument, @selector(shouldActivateReaderWhenAvailable), (IMP)_patched_ftt_meth_$TabDocument$shouldActivateReaderWhenAvailable, NULL);
}
