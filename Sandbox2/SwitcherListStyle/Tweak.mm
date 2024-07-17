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

@class SBAppSwitcherSettings; 
static int (*_logos_orig$_ungrouped$SBAppSwitcherSettings$switcherStyle)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$SBAppSwitcherSettings$switcherStyle(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBAppSwitcherSettings$setSwitcherStyle$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$SBAppSwitcherSettings$setSwitcherStyle$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST, SEL, int); 

#line 3 "Tweak.xm"

static int _logos_method$_ungrouped$SBAppSwitcherSettings$switcherStyle(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 2;
}



static void _logos_method$_ungrouped$SBAppSwitcherSettings$setSwitcherStyle$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    arg1 = 2;
    _logos_orig$_ungrouped$SBAppSwitcherSettings$setSwitcherStyle$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherSettings, @selector(switcherStyle), (IMP)&_logos_method$_ungrouped$SBAppSwitcherSettings$switcherStyle, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherSettings$switcherStyle);}{ MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherSettings, @selector(setSwitcherStyle:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherSettings$setSwitcherStyle$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherSettings$setSwitcherStyle$);}} }
#line 16 "Tweak.xm"
