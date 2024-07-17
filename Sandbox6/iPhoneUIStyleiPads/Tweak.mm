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

@class CAMCaptureCapabilities; @class CAMViewfinderViewController; 
static void (*_logos_orig$_ungrouped$CAMViewfinderViewController$_setLayoutStyle$)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$CAMViewfinderViewController$_setLayoutStyle$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isLiveFilteringSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isLiveFilteringSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CAMViewfinderViewController$_setLayoutStyle$(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$CAMViewfinderViewController$_setLayoutStyle$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isLiveFilteringSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(_setLayoutStyle:), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$_setLayoutStyle$, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$_setLayoutStyle$);}Class _logos_class$_ungrouped$CAMCaptureCapabilities = objc_getClass("CAMCaptureCapabilities"); { MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isLiveFilteringSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isLiveFilteringSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isLiveFilteringSupported);}} }
#line 16 "Tweak.xm"
