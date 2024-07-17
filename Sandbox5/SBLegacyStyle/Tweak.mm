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

@class UIStatusBar; @class UIStatusBarStyleRequest; 
static bool (*_logos_orig$_ungrouped$UIStatusBar$simulatesLegacyAppearance)(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIStatusBar$simulatesLegacyAppearance(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UIStatusBar$isTranslucent)(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIStatusBar$isTranslucent(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIStatusBarStyleRequest$style)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleRequest* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIStatusBarStyleRequest$style(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleRequest* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UIStatusBar$simulatesLegacyAppearance(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$UIStatusBar$isTranslucent(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static long long _logos_method$_ungrouped$UIStatusBarStyleRequest$style(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleRequest* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBar = objc_getClass("UIStatusBar"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBar, @selector(simulatesLegacyAppearance), (IMP)&_logos_method$_ungrouped$UIStatusBar$simulatesLegacyAppearance, (IMP*)&_logos_orig$_ungrouped$UIStatusBar$simulatesLegacyAppearance);}{ MSHookMessageEx(_logos_class$_ungrouped$UIStatusBar, @selector(isTranslucent), (IMP)&_logos_method$_ungrouped$UIStatusBar$isTranslucent, (IMP*)&_logos_orig$_ungrouped$UIStatusBar$isTranslucent);}Class _logos_class$_ungrouped$UIStatusBarStyleRequest = objc_getClass("UIStatusBarStyleRequest"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarStyleRequest, @selector(style), (IMP)&_logos_method$_ungrouped$UIStatusBarStyleRequest$style, (IMP*)&_logos_orig$_ungrouped$UIStatusBarStyleRequest$style);}} }
#line 24 "Tweak.xm"
