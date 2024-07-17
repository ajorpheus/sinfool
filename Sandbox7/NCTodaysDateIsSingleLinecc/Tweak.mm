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

@class SBTodayTableDateHeaderFactory; 
static id (*_logos_orig$_ungrouped$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$)(_LOGOS_SELF_TYPE_NORMAL SBTodayTableDateHeaderFactory* _LOGOS_SELF_CONST, SEL, id, id, bool); static id _logos_method$_ungrouped$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$(_LOGOS_SELF_TYPE_NORMAL SBTodayTableDateHeaderFactory* _LOGOS_SELF_CONST, SEL, id, id, bool); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$(_LOGOS_SELF_TYPE_NORMAL SBTodayTableDateHeaderFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) {
    
    arg3 = 1;
    return _logos_orig$_ungrouped$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$(self, _cmd, arg1, arg2, arg3);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBTodayTableDateHeaderFactory = objc_getClass("SBTodayTableDateHeaderFactory"); { MSHookMessageEx(_logos_class$_ungrouped$SBTodayTableDateHeaderFactory, @selector(dateHeaderWithDate:locale:singleLine:), (IMP)&_logos_method$_ungrouped$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$, (IMP*)&_logos_orig$_ungrouped$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$);}} }
#line 11 "Tweak.xm"
