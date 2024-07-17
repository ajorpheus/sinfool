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

@class UITabBarSwappableImageView; 
static void (*_logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$)(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UITabBarSwappableImageView = objc_getClass("UITabBarSwappableImageView"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarSwappableImageView, @selector(showAlternateImage:), (IMP)&_logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$, (IMP*)&_logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$);}} }
#line 11 "Tweak.xm"
