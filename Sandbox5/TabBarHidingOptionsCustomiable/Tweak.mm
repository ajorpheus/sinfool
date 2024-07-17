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

@class UITabBar; @class UITabBarButton; 
static bool (*_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static UITabBarButton* (*_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$)(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets) _LOGOS_RETURN_RETAINED; static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(_LOGOS_SELF_TYPE_INIT UITabBarButton* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = NULL;
    return _logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(self, _cmd, arg1, arg2, arg3, arg4);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UITabBar = objc_getClass("UITabBar"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(_backgroundNeedsUpdate), (IMP)&_logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate, (IMP*)&_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)&_logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$);}} }
#line 18 "Tweak.xm"
