#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$AdBreak$ads(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AdBreak = objc_getClass("AdBreak");
    MSHookMessageEx(_ftt_class_AdBreak, @selector(ads), (IMP)_patched_ftt_meth_$AdBreak$ads, NULL);
}
