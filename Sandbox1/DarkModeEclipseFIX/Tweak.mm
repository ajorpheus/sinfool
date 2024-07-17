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

@class SLKTheme; 
static id (*_logos_orig$_ungrouped$SLKTheme$mainBackgroundColor)(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SLKTheme$mainBackgroundColor(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SLKTheme$textColor)(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SLKTheme$textColor(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SLKTheme$setType$)(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST, SEL, unsigned long long); static void _logos_method$_ungrouped$SLKTheme$setType$(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST, SEL, unsigned long long); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$SLKTheme$mainBackgroundColor(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [UIColor colorWithRed:27/255.0 green:27/255.0 blue:27/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$SLKTheme$textColor(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [UIColor colorWithRed:239/255.0 green:239/255.0 blue:239/255.0 alpha:255/255.0];
}



static void _logos_method$_ungrouped$SLKTheme$setType$(_LOGOS_SELF_TYPE_NORMAL SLKTheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$SLKTheme$setType$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SLKTheme = objc_getClass("SLKTheme"); { MSHookMessageEx(_logos_class$_ungrouped$SLKTheme, @selector(mainBackgroundColor), (IMP)&_logos_method$_ungrouped$SLKTheme$mainBackgroundColor, (IMP*)&_logos_orig$_ungrouped$SLKTheme$mainBackgroundColor);}{ MSHookMessageEx(_logos_class$_ungrouped$SLKTheme, @selector(textColor), (IMP)&_logos_method$_ungrouped$SLKTheme$textColor, (IMP*)&_logos_orig$_ungrouped$SLKTheme$textColor);}{ MSHookMessageEx(_logos_class$_ungrouped$SLKTheme, @selector(setType:), (IMP)&_logos_method$_ungrouped$SLKTheme$setType$, (IMP*)&_logos_orig$_ungrouped$SLKTheme$setType$);}} }
#line 22 "Tweak.xm"
