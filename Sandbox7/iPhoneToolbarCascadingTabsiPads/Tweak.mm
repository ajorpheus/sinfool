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

@class BrowserController; 
static bool (*_logos_orig$_ungrouped$BrowserController$_shouldUseNarrowLayout)(_LOGOS_SELF_TYPE_NORMAL BrowserController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$BrowserController$_shouldUseNarrowLayout(_LOGOS_SELF_TYPE_NORMAL BrowserController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$BrowserController$_shouldUseNarrowLayout(_LOGOS_SELF_TYPE_NORMAL BrowserController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BrowserController = objc_getClass("BrowserController"); { MSHookMessageEx(_logos_class$_ungrouped$BrowserController, @selector(_shouldUseNarrowLayout), (IMP)&_logos_method$_ungrouped$BrowserController$_shouldUseNarrowLayout, (IMP*)&_logos_orig$_ungrouped$BrowserController$_shouldUseNarrowLayout);}} }
#line 9 "Tweak.xm"
