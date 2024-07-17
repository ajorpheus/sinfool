#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MPUEmptyNowPlayingView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$MPUEmptyNowPlayingView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$MPUEmptyNowPlayingView$setBackgroundColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUEmptyNowPlayingView = objc_getClass("MPUEmptyNowPlayingView");
    MSHookMessageEx(_ftt_class_MPUEmptyNowPlayingView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$MPUEmptyNowPlayingView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$MPUEmptyNowPlayingView$setBackgroundColor$);
}
