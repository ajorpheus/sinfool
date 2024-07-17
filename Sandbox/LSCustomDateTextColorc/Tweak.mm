#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBLockScreenDateViewController$setCustomSubtitleText$withColor$)(id, SEL, id, id);
static void _patched_ftt_meth_$SBLockScreenDateViewController$setCustomSubtitleText$withColor$(id self, SEL _cmd, id arg1, id arg2) {
    // (Argument #1): Text  (Argument #2): Color
    arg1 = @"Flex";
    arg2 = [UIColor colorWithRed:114/255.0 green:16/255.0 blue:238/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBLockScreenDateViewController$setCustomSubtitleText$withColor$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenDateViewController = objc_getClass("SBLockScreenDateViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenDateViewController, @selector(setCustomSubtitleText:withColor:), (IMP)_patched_ftt_meth_$SBLockScreenDateViewController$setCustomSubtitleText$withColor$, (IMP *)_orig_ftt_meth_$SBLockScreenDateViewController$setCustomSubtitleText$withColor$);
}
