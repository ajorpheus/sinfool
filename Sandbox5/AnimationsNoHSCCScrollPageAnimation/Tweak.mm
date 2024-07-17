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

@class UIScrollView; 
static bool (*_logos_orig$_ungrouped$UIScrollView$_getPagingDecelerationOffset$forTimeInterval$)(_LOGOS_SELF_TYPE_NORMAL UIScrollView* _LOGOS_SELF_CONST, SEL, CGPoint*, double); static bool _logos_method$_ungrouped$UIScrollView$_getPagingDecelerationOffset$forTimeInterval$(_LOGOS_SELF_TYPE_NORMAL UIScrollView* _LOGOS_SELF_CONST, SEL, CGPoint*, double); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UIScrollView$_getPagingDecelerationOffset$forTimeInterval$(_LOGOS_SELF_TYPE_NORMAL UIScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint* arg1, double arg2) {
    arg2 = 15;
    return _logos_orig$_ungrouped$UIScrollView$_getPagingDecelerationOffset$forTimeInterval$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIScrollView = objc_getClass("UIScrollView"); { MSHookMessageEx(_logos_class$_ungrouped$UIScrollView, @selector(_getPagingDecelerationOffset:forTimeInterval:), (IMP)&_logos_method$_ungrouped$UIScrollView$_getPagingDecelerationOffset$forTimeInterval$, (IMP*)&_logos_orig$_ungrouped$UIScrollView$_getPagingDecelerationOffset$forTimeInterval$);}} }
#line 10 "Tweak.xm"
