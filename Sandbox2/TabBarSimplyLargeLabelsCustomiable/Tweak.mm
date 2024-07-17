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

@class UITabBarButtonLabel; @class UITabBarButton; 
static id (*_logos_orig$_ungrouped$UITabBarButtonLabel$_fontForIdiom$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButtonLabel* _LOGOS_SELF_CONST, SEL, long long); static id _logos_method$_ungrouped$UITabBarButtonLabel$_fontForIdiom$(_LOGOS_SELF_TYPE_NORMAL UITabBarButtonLabel* _LOGOS_SELF_CONST, SEL, long long); static UITabBarButton* (*_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$)(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets, id) _LOGOS_RETURN_RETAINED; static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$UITabBarButtonLabel$_fontForIdiom$(_LOGOS_SELF_TYPE_NORMAL UITabBarButtonLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 2;
    return _logos_orig$_ungrouped$UITabBarButtonLabel$_fontForIdiom$(self, _cmd, arg1);
}



static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$(_LOGOS_SELF_TYPE_INIT UITabBarButton* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4, id arg5) _LOGOS_RETURN_RETAINED {
    
    arg1 = NULL;
    return _logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UITabBarButtonLabel = objc_getClass("UITabBarButtonLabel"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButtonLabel, @selector(_fontForIdiom:), (IMP)&_logos_method$_ungrouped$UITabBarButtonLabel$_fontForIdiom$, (IMP*)&_logos_orig$_ungrouped$UITabBarButtonLabel$_fontForIdiom$);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:tabBar:), (IMP)&_logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$);}} }
#line 19 "Tweak.xm"
