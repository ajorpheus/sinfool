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

@class SBLockScreenDateViewController; 
static void (*_logos_orig$_ungrouped$SBLockScreenDateViewController$setCustomSubtitleText$withColor$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$SBLockScreenDateViewController$setCustomSubtitleText$withColor$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST, SEL, id, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBLockScreenDateViewController$setCustomSubtitleText$withColor$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    
    arg1 = @"Flex";
    arg2 = [UIColor colorWithRed:114/255.0 green:16/255.0 blue:238/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SBLockScreenDateViewController$setCustomSubtitleText$withColor$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenDateViewController = objc_getClass("SBLockScreenDateViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenDateViewController, @selector(setCustomSubtitleText:withColor:), (IMP)&_logos_method$_ungrouped$SBLockScreenDateViewController$setCustomSubtitleText$withColor$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenDateViewController$setCustomSubtitleText$withColor$);}} }
#line 12 "Tweak.xm"
