#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$MPUMediaControlsTitlesView$isHighlighted(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUMediaControlsTitlesView = objc_getClass("MPUMediaControlsTitlesView");
    MSHookMessageEx(_ftt_class_MPUMediaControlsTitlesView, @selector(isHighlighted), (IMP)_patched_ftt_meth_$MPUMediaControlsTitlesView$isHighlighted, NULL);
}
