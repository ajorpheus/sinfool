#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$YTTabTitlesView$preferredHeight(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_YTTabTitlesView = objc_getClass("YTTabTitlesView");
    MSHookMessageEx(_ftt_class_YTTabTitlesView, @selector(preferredHeight), (IMP)_patched_ftt_meth_$YTTabTitlesView$preferredHeight, NULL);
}
