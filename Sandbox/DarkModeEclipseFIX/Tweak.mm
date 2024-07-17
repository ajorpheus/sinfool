#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SLKTheme$mainBackgroundColor(id self, SEL _cmd) {
    return [UIColor colorWithRed:27/255.0 green:27/255.0 blue:27/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$SLKTheme$textColor(id self, SEL _cmd) {
    return [UIColor colorWithRed:239/255.0 green:239/255.0 blue:239/255.0 alpha:255/255.0];
}

static void (*_orig_ftt_meth_$SLKTheme$setType$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$SLKTheme$setType$(id self, SEL _cmd, unsigned long long arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SLKTheme$setType$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SLKTheme = objc_getClass("SLKTheme");
    MSHookMessageEx(_ftt_class_SLKTheme, @selector(mainBackgroundColor), (IMP)_patched_ftt_meth_$SLKTheme$mainBackgroundColor, NULL);
    MSHookMessageEx(_ftt_class_SLKTheme, @selector(textColor), (IMP)_patched_ftt_meth_$SLKTheme$textColor, NULL);
    MSHookMessageEx(_ftt_class_SLKTheme, @selector(setType:), (IMP)_patched_ftt_meth_$SLKTheme$setType$, (IMP *)_orig_ftt_meth_$SLKTheme$setType$);
}
