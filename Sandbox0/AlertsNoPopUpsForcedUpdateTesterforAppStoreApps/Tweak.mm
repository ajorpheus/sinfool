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

@class UIAlertView; 
static UIAlertView* (*_logos_orig$_ungrouped$UIAlertView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UIAlertView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UIAlertView* _logos_method$_ungrouped$UIAlertView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UIAlertView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static UIAlertView* _logos_method$_ungrouped$UIAlertView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UIAlertView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIAlertView = objc_getClass("UIAlertView"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$UIAlertView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$UIAlertView$initWithFrame$);}} }
#line 10 "Tweak.xm"
