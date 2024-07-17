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

@class YTNavigationBar; @class YTRightNavigationButtons; @class YTTitleBar_iPad; @class YTTabTitlesView; @class YTAppView; @class UIStatusBarNewUIStyleAttributes; @class _UINavigationBarBackground; 
static UIStatusBarNewUIStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$)(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes*, SEL, id, id, id, bool) _LOGOS_RETURN_RETAINED; static UIStatusBarNewUIStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes*, SEL, id, id, id, bool) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTAppView$setStatusBarBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTAppView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTAppView$setStatusBarBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTAppView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UINavigationBarBackground$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarBackground* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UINavigationBarBackground$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarBackground* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTNavigationBar$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTNavigationBar* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTNavigationBar$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTNavigationBar* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$)(_LOGOS_SELF_TYPE_NORMAL YTTitleBar_iPad* _LOGOS_SELF_CONST, SEL, id, id, bool); static void _logos_method$_ungrouped$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$(_LOGOS_SELF_TYPE_NORMAL YTTitleBar_iPad* _LOGOS_SELF_CONST, SEL, id, id, bool); static void (*_logos_orig$_ungrouped$YTRightNavigationButtons$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL YTRightNavigationButtons* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTRightNavigationButtons$setTintColor$(_LOGOS_SELF_TYPE_NORMAL YTRightNavigationButtons* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTTabTitlesView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTTabTitlesView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTTabTitlesView$setTabStyle$)(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$YTTabTitlesView$setTabStyle$(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$YTTabTitlesView$setTabTitleColor$)(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTTabTitlesView$setTabTitleColor$(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static UIStatusBarNewUIStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, bool arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(self, _cmd, arg1, arg2, arg3, arg4);
}



static void _logos_method$_ungrouped$YTAppView$setStatusBarBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTAppView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTAppView$setStatusBarBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UINavigationBarBackground$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UINavigationBarBackground$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTNavigationBar$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTNavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTNavigationBar$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$(_LOGOS_SELF_TYPE_NORMAL YTTitleBar_iPad* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$YTRightNavigationButtons$setTintColor$(_LOGOS_SELF_TYPE_NORMAL YTRightNavigationButtons* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTRightNavigationButtons$setTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTTabTitlesView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTTabTitlesView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTTabTitlesView$setTabStyle$(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$YTTabTitlesView$setTabStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$YTTabTitlesView$setTabTitleColor$(_LOGOS_SELF_TYPE_NORMAL YTTabTitlesView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$YTTabTitlesView$setTabTitleColor$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:hasBusyBackground:), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes, @selector(isTranslucent), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent);}Class _logos_class$_ungrouped$YTAppView = objc_getClass("YTAppView"); { MSHookMessageEx(_logos_class$_ungrouped$YTAppView, @selector(setStatusBarBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTAppView$setStatusBarBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTAppView$setStatusBarBackgroundColor$);}Class _logos_class$_ungrouped$_UINavigationBarBackground = objc_getClass("_UINavigationBarBackground"); { MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarBackground, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UINavigationBarBackground$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarBackground$setBackgroundColor$);}Class _logos_class$_ungrouped$YTNavigationBar = objc_getClass("YTNavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$YTNavigationBar, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTNavigationBar$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTNavigationBar$setBackgroundColor$);}Class _logos_class$_ungrouped$YTTitleBar_iPad = objc_getClass("YTTitleBar_iPad"); { MSHookMessageEx(_logos_class$_ungrouped$YTTitleBar_iPad, @selector(setThemeColor:foregroundColor:animated:), (IMP)&_logos_method$_ungrouped$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$, (IMP*)&_logos_orig$_ungrouped$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$);}Class _logos_class$_ungrouped$YTRightNavigationButtons = objc_getClass("YTRightNavigationButtons"); { MSHookMessageEx(_logos_class$_ungrouped$YTRightNavigationButtons, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$YTRightNavigationButtons$setTintColor$, (IMP*)&_logos_orig$_ungrouped$YTRightNavigationButtons$setTintColor$);}Class _logos_class$_ungrouped$YTTabTitlesView = objc_getClass("YTTabTitlesView"); { MSHookMessageEx(_logos_class$_ungrouped$YTTabTitlesView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$YTTabTitlesView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$YTTabTitlesView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTTabTitlesView, @selector(setTabStyle:), (IMP)&_logos_method$_ungrouped$YTTabTitlesView$setTabStyle$, (IMP*)&_logos_orig$_ungrouped$YTTabTitlesView$setTabStyle$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTTabTitlesView, @selector(setTabTitleColor:), (IMP)&_logos_method$_ungrouped$YTTabTitlesView$setTabTitleColor$, (IMP*)&_logos_orig$_ungrouped$YTTabTitlesView$setTabTitleColor$);}} }
#line 83 "Tweak.xm"
