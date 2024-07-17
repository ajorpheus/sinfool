#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBRootFolderView$_searchableTodayViewModeWantsBlur(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBRootFolderView = objc_getClass("SBRootFolderView");
    MSHookMessageEx(_ftt_class_SBRootFolderView, @selector(_searchableTodayViewModeWantsBlur), (IMP)_patched_ftt_meth_$SBRootFolderView$_searchableTodayViewModeWantsBlur, NULL);
}
