#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$)(id, SEL, bool);
static void _patched_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$(id self, SEL _cmd, bool arg1) {
    // Show Top Line (Mini Player)
    arg1 = 1;
    _orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$)(id, SEL, bool);
static void _patched_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$(id self, SEL _cmd, bool arg1) {
    // Show Backdrop (Tab Bar & Mini Player)
    arg1 = 0;
    _orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$)(id, SEL, bool);
static void _patched_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$(id self, SEL _cmd, bool arg1) {
    // Show Bottom Line (Mini Player)
    arg1 = 1;
    _orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$MusicTabBarController$setMiniPlayerVisible$)(id, SEL, bool);
static void _patched_ftt_meth_$MusicTabBarController$setMiniPlayerVisible$(id self, SEL _cmd, bool arg1) {
    // Show Mini Player
    arg1 = 1;
    _orig_ftt_meth_$MusicTabBarController$setMiniPlayerVisible$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SKUIScrollingTabBarBackgroundView = objc_getClass("SKUIScrollingTabBarBackgroundView");
    MSHookMessageEx(_ftt_class_SKUIScrollingTabBarBackgroundView, @selector(setShowsTopHairline:), (IMP)_patched_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$, (IMP *)_orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsTopHairline$);
    MSHookMessageEx(_ftt_class_SKUIScrollingTabBarBackgroundView, @selector(setShowsBackdrop:), (IMP)_patched_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$, (IMP *)_orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBackdrop$);
    MSHookMessageEx(_ftt_class_SKUIScrollingTabBarBackgroundView, @selector(setShowsBottomHairline:), (IMP)_patched_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$, (IMP *)_orig_ftt_meth_$SKUIScrollingTabBarBackgroundView$setShowsBottomHairline$);
    Class _ftt_class_MusicTabBarController = objc_getClass("MusicTabBarController");
    MSHookMessageEx(_ftt_class_MusicTabBarController, @selector(setMiniPlayerVisible:), (IMP)_patched_ftt_meth_$MusicTabBarController$setMiniPlayerVisible$, (IMP *)_orig_ftt_meth_$MusicTabBarController$setMiniPlayerVisible$);
}
