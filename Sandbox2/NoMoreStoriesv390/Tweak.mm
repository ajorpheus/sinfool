#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class IGStoryTraySectionController; 
static IGStoryTraySectionController* (*_logos_orig$_ungrouped$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$)(_LOGOS_SELF_TYPE_INIT IGStoryTraySectionController*, SEL, id, id, id, id, id, long long, id, id) _LOGOS_RETURN_RETAINED; static IGStoryTraySectionController* _logos_method$_ungrouped$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$(_LOGOS_SELF_TYPE_INIT IGStoryTraySectionController*, SEL, id, id, id, id, id, long long, id, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static IGStoryTraySectionController* _logos_method$_ungrouped$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$(_LOGOS_SELF_TYPE_INIT IGStoryTraySectionController* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, id arg5, long long arg6, id arg7, id arg8) _LOGOS_RETURN_RETAINED {
    arg7 = NULL;
    return _logos_orig$_ungrouped$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$IGStoryTraySectionController = objc_getClass("IGStoryTraySectionController"); { MSHookMessageEx(_logos_class$_ungrouped$IGStoryTraySectionController, @selector(initWithUserSession:dataController:dataSource:loggingContext:loggingDelegate:entryPoint:traySectionConfiguration:storyViewerConfiguration:), (IMP)&_logos_method$_ungrouped$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$, (IMP*)&_logos_orig$_ungrouped$IGStoryTraySectionController$initWithUserSession$dataController$dataSource$loggingContext$loggingDelegate$entryPoint$traySectionConfiguration$storyViewerConfiguration$);}} }
#line 10 "Tweak.xm"
