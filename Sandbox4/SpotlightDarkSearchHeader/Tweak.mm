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

@class SPUINavigationBar; @class SPUISearchHeader; 
static void (*_logos_orig$_ungrouped$SPUISearchHeader$updateBlurProgress$)(_LOGOS_SELF_TYPE_NORMAL SPUISearchHeader* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SPUISearchHeader$updateBlurProgress$(_LOGOS_SELF_TYPE_NORMAL SPUISearchHeader* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SPUINavigationBar$updateBlurProgress$animated$)(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST, SEL, double, bool); static void _logos_method$_ungrouped$SPUINavigationBar$updateBlurProgress$animated$(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST, SEL, double, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SPUISearchHeader$updateBlurProgress$(_LOGOS_SELF_TYPE_NORMAL SPUISearchHeader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SPUISearchHeader$updateBlurProgress$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SPUINavigationBar$updateBlurProgress$animated$(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1, bool arg2) {
    arg1 = 0;
    _logos_orig$_ungrouped$SPUINavigationBar$updateBlurProgress$animated$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SPUISearchHeader = objc_getClass("SPUISearchHeader"); { MSHookMessageEx(_logos_class$_ungrouped$SPUISearchHeader, @selector(updateBlurProgress:), (IMP)&_logos_method$_ungrouped$SPUISearchHeader$updateBlurProgress$, (IMP*)&_logos_orig$_ungrouped$SPUISearchHeader$updateBlurProgress$);}Class _logos_class$_ungrouped$SPUINavigationBar = objc_getClass("SPUINavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$SPUINavigationBar, @selector(updateBlurProgress:animated:), (IMP)&_logos_method$_ungrouped$SPUINavigationBar$updateBlurProgress$animated$, (IMP*)&_logos_orig$_ungrouped$SPUINavigationBar$updateBlurProgress$animated$);}} }
#line 18 "Tweak.xm"