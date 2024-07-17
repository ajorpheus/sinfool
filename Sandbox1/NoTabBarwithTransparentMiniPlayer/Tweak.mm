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

@class SKUIScrollingTabBarBackgroundView; @class MusicTabBarController; 
static void (*_logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$)(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$)(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$)(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$MusicTabBarController$setMiniPlayerVisible$)(_LOGOS_SELF_TYPE_NORMAL MusicTabBarController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$MusicTabBarController$setMiniPlayerVisible$(_LOGOS_SELF_TYPE_NORMAL MusicTabBarController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$(_LOGOS_SELF_TYPE_NORMAL SKUIScrollingTabBarBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$MusicTabBarController$setMiniPlayerVisible$(_LOGOS_SELF_TYPE_NORMAL MusicTabBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$MusicTabBarController$setMiniPlayerVisible$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SKUIScrollingTabBarBackgroundView = objc_getClass("SKUIScrollingTabBarBackgroundView"); { MSHookMessageEx(_logos_class$_ungrouped$SKUIScrollingTabBarBackgroundView, @selector(setShowsTopHairline:), (IMP)&_logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$, (IMP*)&_logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$);}{ MSHookMessageEx(_logos_class$_ungrouped$SKUIScrollingTabBarBackgroundView, @selector(setShowsBackdrop:), (IMP)&_logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$, (IMP*)&_logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$);}{ MSHookMessageEx(_logos_class$_ungrouped$SKUIScrollingTabBarBackgroundView, @selector(setShowsBottomHairline:), (IMP)&_logos_method$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$, (IMP*)&_logos_orig$_ungrouped$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$);}Class _logos_class$_ungrouped$MusicTabBarController = objc_getClass("MusicTabBarController"); { MSHookMessageEx(_logos_class$_ungrouped$MusicTabBarController, @selector(setMiniPlayerVisible:), (IMP)&_logos_method$_ungrouped$MusicTabBarController$setMiniPlayerVisible$, (IMP*)&_logos_orig$_ungrouped$MusicTabBarController$setMiniPlayerVisible$);}} }
#line 35 "Tweak.xm"
