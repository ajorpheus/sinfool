#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$PHRecentsToggleButton$initWithWidth$leftTitle$rightTitle$(id self, SEL _cmd, float arg1, id arg2, id arg3) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PHRecentsToggleButton = objc_getClass("PHRecentsToggleButton");
    MSHookMessageEx(_ftt_class_PHRecentsToggleButton, @selector(initWithWidth:leftTitle:rightTitle:), (IMP)_patched_ftt_meth_$PHRecentsToggleButton$initWithWidth$leftTitle$rightTitle$, NULL);
}
