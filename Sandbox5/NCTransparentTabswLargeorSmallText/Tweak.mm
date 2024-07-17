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

@class UISegment; 
static UISegment* (*_logos_orig$_ungrouped$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$)(_LOGOS_SELF_TYPE_INIT UISegment*, SEL, id, long long, int, long long, id, id, unsigned int, bool) _LOGOS_RETURN_RETAINED; static UISegment* _logos_method$_ungrouped$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$(_LOGOS_SELF_TYPE_INIT UISegment*, SEL, id, long long, int, long long, id, id, unsigned int, bool) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static UISegment* _logos_method$_ungrouped$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$(_LOGOS_SELF_TYPE_INIT UISegment* __unused self, SEL __unused _cmd, id arg1, long long arg2, int arg3, long long arg4, id arg5, id arg6, unsigned int arg7, bool arg8) _LOGOS_RETURN_RETAINED {
    
    arg2 = 0;
    return _logos_orig$_ungrouped$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UISegment = objc_getClass("UISegment"); { MSHookMessageEx(_logos_class$_ungrouped$UISegment, @selector(initWithInfo:style:size:barStyle:tintColor:appearanceStorage:position:autosizeText:), (IMP)&_logos_method$_ungrouped$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$, (IMP*)&_logos_orig$_ungrouped$UISegment$initWithInfo$style$size$barStyle$tintColor$appearanceStorage$position$autosizeText$);}} }
#line 11 "Tweak.xm"
