#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$CCUIControlCenterPageContainerViewController$layoutStyle(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCUIControlCenterPageContainerViewController = objc_getClass("CCUIControlCenterPageContainerViewController");
    MSHookMessageEx(_ftt_class_CCUIControlCenterPageContainerViewController, @selector(layoutStyle), (IMP)_patched_ftt_meth_$CCUIControlCenterPageContainerViewController$layoutStyle, NULL);
}
