#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Button Visibility/Color:	Show=Set Color, Hide=pass-through [iOS GREEN=4CD964]
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TPSuperBottomBarButton = objc_getClass("TPSuperBottomBarButton");
    MSHookMessageEx(_ftt_class_TPSuperBottomBarButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$);
}
