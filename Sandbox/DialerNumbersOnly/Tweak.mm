#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PHHandsetDialerView$dialerIsNumericOnly(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PHHandsetDialerView = objc_getClass("PHHandsetDialerView");
    MSHookMessageEx(_ftt_class_PHHandsetDialerView, @selector(dialerIsNumericOnly), (IMP)_patched_ftt_meth_$PHHandsetDialerView$dialerIsNumericOnly, NULL);
}
