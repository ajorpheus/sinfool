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

@class UIAlertController; 
static long long (*_logos_orig$_ungrouped$UIAlertController$preferredStyle)(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIAlertController$preferredStyle(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$)(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL, long long, id, id); static id _logos_method$_ungrouped$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL, long long, id, id); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$UIAlertController$preferredStyle(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static id _logos_method$_ungrouped$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, id arg2, id arg3) {
    
    arg1 = 1;
    return _logos_orig$_ungrouped$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$(self, _cmd, arg1, arg2, arg3);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIAlertController = objc_getClass("UIAlertController"); { MSHookMessageEx(_logos_class$_ungrouped$UIAlertController, @selector(preferredStyle), (IMP)&_logos_method$_ungrouped$UIAlertController$preferredStyle, (IMP*)&_logos_orig$_ungrouped$UIAlertController$preferredStyle);}{ MSHookMessageEx(_logos_class$_ungrouped$UIAlertController, @selector(visualStyleForAlertControllerStyle:traitCollection:descriptor:), (IMP)&_logos_method$_ungrouped$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$, (IMP*)&_logos_orig$_ungrouped$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$);}} }
#line 18 "Tweak.xm"
