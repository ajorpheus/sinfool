#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PF500User$showNude(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PF500User = objc_getClass("PF500User");
    MSHookMessageEx(_ftt_class_PF500User, @selector(showNude), (IMP)_patched_ftt_meth_$PF500User$showNude, NULL);
}
