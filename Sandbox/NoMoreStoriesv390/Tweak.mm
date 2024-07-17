#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$)(id, SEL, id, id, id, id, id, long long, id, id);
static id _patched_ftt_meth_$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$(id self, SEL _cmd, id arg1, id arg2, id arg3, id arg4, id arg5, long long arg6, id arg7, id arg8) {
    arg7 = NULL;
    return _orig_ftt_meth_$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_IGStoryTraySectionController = objc_getClass("IGStoryTraySectionController");
    MSHookMessageEx(_ftt_class_IGStoryTraySectionController, @selector(initWithUserSession:dataController:dataSource:loggingContext:loggingDelegate:entryPoint:traySectionConfiguration:storyViewerConfiguration:), (IMP)_patched_ftt_meth_$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$, (IMP *)_orig_ftt_meth_$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$);
}
