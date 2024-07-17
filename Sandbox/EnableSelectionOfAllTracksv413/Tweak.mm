#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SkipEvent$skipStatus(id self, SEL _cmd) {
    // No "SKIP LIMIT REACHED" Popup: (Hide=0, Show=P)
    return 0;
}

static long long _patched_ftt_meth_$DMCAInfo$dmcaContentType(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SkipEvent = objc_getClass("SkipEvent");
    MSHookMessageEx(_ftt_class_SkipEvent, @selector(skipStatus), (IMP)_patched_ftt_meth_$SkipEvent$skipStatus, NULL);
    Class _ftt_class_DMCAInfo = objc_getClass("DMCAInfo");
    MSHookMessageEx(_ftt_class_DMCAInfo, @selector(dmcaContentType), (IMP)_patched_ftt_meth_$DMCAInfo$dmcaContentType, NULL);
}
