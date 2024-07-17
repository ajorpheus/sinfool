#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$)(id, SEL, id, long long, int, long long, id, id, unsigned int, bool);
static id _patched_ftt_meth_$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$(id self, SEL _cmd, id arg1, long long arg2, int arg3, long long arg4, id arg5, id arg6, unsigned int arg7, bool arg8) {
    // (Arg#2):	Standard Text=-1, Large Text=0
    arg2 = 0;
    return _orig_ftt_meth_$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UISegment = objc_getClass("UISegment");
    MSHookMessageEx(_ftt_class_UISegment, @selector(initWithInfo:style:size:barStyle:tintColor:appearanceStorage:position:autosizeText:), (IMP)_patched_ftt_meth_$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$, (IMP *)_orig_ftt_meth_$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$);
}
