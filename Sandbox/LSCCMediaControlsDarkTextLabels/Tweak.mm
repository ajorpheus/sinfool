#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$MPUChronologicalProgressView$_createTimeLabelWithStyle$)(id, SEL, long long);
static id _patched_ftt_meth_$MPUChronologicalProgressView$_createTimeLabelWithStyle$(id self, SEL _cmd, long long arg1) {
    // Progress Bar Time
    arg1 = 1;
    return _orig_ftt_meth_$MPUChronologicalProgressView$_createTimeLabelWithStyle$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$MPUMediaControlsTitlesView$_titleTextAttributes(id self, SEL _cmd) {
    // Title
    return NULL;
}

static id _patched_ftt_meth_$MPUMediaControlsTitlesView$_detailTextAttributes(id self, SEL _cmd) {
    // Detail (Artist/Album)
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUChronologicalProgressView = objc_getClass("MPUChronologicalProgressView");
    MSHookMessageEx(_ftt_class_MPUChronologicalProgressView, @selector(_createTimeLabelWithStyle:), (IMP)_patched_ftt_meth_$MPUChronologicalProgressView$_createTimeLabelWithStyle$, (IMP *)_orig_ftt_meth_$MPUChronologicalProgressView$_createTimeLabelWithStyle$);
    Class _ftt_class_MPUMediaControlsTitlesView = objc_getClass("MPUMediaControlsTitlesView");
    MSHookMessageEx(_ftt_class_MPUMediaControlsTitlesView, @selector(_titleTextAttributes), (IMP)_patched_ftt_meth_$MPUMediaControlsTitlesView$_titleTextAttributes, NULL);
    MSHookMessageEx(_ftt_class_MPUMediaControlsTitlesView, @selector(_detailTextAttributes), (IMP)_patched_ftt_meth_$MPUMediaControlsTitlesView$_detailTextAttributes, NULL);
}
