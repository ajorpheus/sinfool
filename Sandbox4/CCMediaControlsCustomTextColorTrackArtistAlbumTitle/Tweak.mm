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

@class CCUIControlCenterLabel; 
static void (*_logos_orig$_ungrouped$CCUIControlCenterLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CCUIControlCenterLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterLabel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CCUIControlCenterLabel$setStyle$)(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterLabel* _LOGOS_SELF_CONST, SEL, unsigned long long); static void _logos_method$_ungrouped$CCUIControlCenterLabel$setStyle$(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterLabel* _LOGOS_SELF_CONST, SEL, unsigned long long); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CCUIControlCenterLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$CCUIControlCenterLabel$setTextColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CCUIControlCenterLabel$setStyle$(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1) {
    arg1 = 2;
    _logos_orig$_ungrouped$CCUIControlCenterLabel$setStyle$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIControlCenterLabel = objc_getClass("CCUIControlCenterLabel"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIControlCenterLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$CCUIControlCenterLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$CCUIControlCenterLabel$setTextColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$CCUIControlCenterLabel, @selector(setStyle:), (IMP)&_logos_method$_ungrouped$CCUIControlCenterLabel$setStyle$, (IMP*)&_logos_orig$_ungrouped$CCUIControlCenterLabel$setStyle$);}} }
#line 18 "Tweak.xm"
