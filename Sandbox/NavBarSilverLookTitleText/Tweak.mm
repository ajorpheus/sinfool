#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$UINavigationItemView$_useSilverLookForBarStyle$(id self, SEL _cmd, int arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UINavigationItemView = objc_getClass("UINavigationItemView");
    MSHookMessageEx(_ftt_class_UINavigationItemView, @selector(_useSilverLookForBarStyle:), (IMP)_patched_ftt_meth_$UINavigationItemView$_useSilverLookForBarStyle$, NULL);
}
