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

@class RHFullPlayerContainerViewController; @class RHStatusBarView; 
static void (*_logos_orig$_ungrouped$RHStatusBarView$setStatusMessage$ofType$)(_LOGOS_SELF_TYPE_NORMAL RHStatusBarView* _LOGOS_SELF_CONST, SEL, id, int); static void _logos_method$_ungrouped$RHStatusBarView$setStatusMessage$ofType$(_LOGOS_SELF_TYPE_NORMAL RHStatusBarView* _LOGOS_SELF_CONST, SEL, id, int); static id (*_logos_orig$_ungrouped$RHFullPlayerContainerViewController$statusBarView)(_LOGOS_SELF_TYPE_NORMAL RHFullPlayerContainerViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$RHFullPlayerContainerViewController$statusBarView(_LOGOS_SELF_TYPE_NORMAL RHFullPlayerContainerViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$RHStatusBarView$setStatusMessage$ofType$(_LOGOS_SELF_TYPE_NORMAL RHStatusBarView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, int arg2) {
    
    arg1 = @"Flex 2";
    arg2 = 0;
    _logos_orig$_ungrouped$RHStatusBarView$setStatusMessage$ofType$(self, _cmd, arg1, arg2);
}



static id _logos_method$_ungrouped$RHFullPlayerContainerViewController$statusBarView(_LOGOS_SELF_TYPE_NORMAL RHFullPlayerContainerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$RHStatusBarView = objc_getClass("RHStatusBarView"); { MSHookMessageEx(_logos_class$_ungrouped$RHStatusBarView, @selector(setStatusMessage:ofType:), (IMP)&_logos_method$_ungrouped$RHStatusBarView$setStatusMessage$ofType$, (IMP*)&_logos_orig$_ungrouped$RHStatusBarView$setStatusMessage$ofType$);}Class _logos_class$_ungrouped$RHFullPlayerContainerViewController = objc_getClass("RHFullPlayerContainerViewController"); { MSHookMessageEx(_logos_class$_ungrouped$RHFullPlayerContainerViewController, @selector(statusBarView), (IMP)&_logos_method$_ungrouped$RHFullPlayerContainerViewController$statusBarView, (IMP*)&_logos_orig$_ungrouped$RHFullPlayerContainerViewController$statusBarView);}} }
#line 19 "Tweak.xm"
