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

@class SBSearchEtceteraLayoutView; 
static unsigned long long (*_logos_orig$_ungrouped$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView)(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraLayoutView* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraLayoutView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraLayoutView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBSearchEtceteraLayoutView = objc_getClass("SBSearchEtceteraLayoutView"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchEtceteraLayoutView, @selector(_indexOfNotificationsPageView), (IMP)&_logos_method$_ungrouped$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView, (IMP*)&_logos_orig$_ungrouped$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView);}} }
#line 9 "Tweak.xm"
