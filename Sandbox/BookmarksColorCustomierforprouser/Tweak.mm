#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$_SFNavigationBar$isUsingLightControls(id self, SEL _cmd) {
    // Status/Nav Bar Uses White Controls
    return 1;
}

static void (*_orig_ftt_meth_$SFCrossfadingLabel$setFromColor$)(id, SEL, id);
static void _patched_ftt_meth_$SFCrossfadingLabel$setFromColor$(id self, SEL _cmd, id arg1) {
    // URL Site Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SFCrossfadingLabel$setFromColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$BookmarkFavoritesCollectionView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$BookmarkFavoritesCollectionView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Background Color
    arg1 = [UIColor colorWithRed:26/255.0 green:26/255.0 blue:26/255.0 alpha:255/255.0];
    _orig_ftt_meth_$BookmarkFavoritesCollectionView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_SFSiteIconView$_setGlyph$withBackgroundColor$)(id, SEL, id, id);
static void _patched_ftt_meth_$_SFSiteIconView$_setGlyph$withBackgroundColor$(id self, SEL _cmd, id arg1, id arg2) {
    // Folder Icon Color
    arg2 = [UIColor colorWithRed:42/255.0 green:42/255.0 blue:42/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_SFSiteIconView$_setGlyph$withBackgroundColor$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$_SFSiteIconView$_setMonogramWithString$backgroundColor$)(id, SEL, id, id);
static void _patched_ftt_meth_$_SFSiteIconView$_setMonogramWithString$backgroundColor$(id self, SEL _cmd, id arg1, id arg2) {
    // Site Icon Color
    arg2 = [UIColor colorWithRed:42/255.0 green:42/255.0 blue:42/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_SFSiteIconView$_setMonogramWithString$backgroundColor$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$VibrantLabelView$setNonVibrantColor$)(id, SEL, id);
static void _patched_ftt_meth_$VibrantLabelView$setNonVibrantColor$(id self, SEL _cmd, id arg1) {
    // Icon Label Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$VibrantLabelView$setNonVibrantColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$VibrantLabelView$setUsesVibrantEffect$)(id, SEL, bool);
static void _patched_ftt_meth_$VibrantLabelView$setUsesVibrantEffect$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$VibrantLabelView$setUsesVibrantEffect$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SFNavigationBar = objc_getClass("_SFNavigationBar");
    MSHookMessageEx(_ftt_class__SFNavigationBar, @selector(isUsingLightControls), (IMP)_patched_ftt_meth_$_SFNavigationBar$isUsingLightControls, NULL);
    Class _ftt_class_SFCrossfadingLabel = objc_getClass("SFCrossfadingLabel");
    MSHookMessageEx(_ftt_class_SFCrossfadingLabel, @selector(setFromColor:), (IMP)_patched_ftt_meth_$SFCrossfadingLabel$setFromColor$, (IMP *)_orig_ftt_meth_$SFCrossfadingLabel$setFromColor$);
    Class _ftt_class_BookmarkFavoritesCollectionView = objc_getClass("BookmarkFavoritesCollectionView");
    MSHookMessageEx(_ftt_class_BookmarkFavoritesCollectionView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$BookmarkFavoritesCollectionView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$BookmarkFavoritesCollectionView$setBackgroundColor$);
    Class _ftt_class__SFSiteIconView = objc_getClass("_SFSiteIconView");
    MSHookMessageEx(_ftt_class__SFSiteIconView, @selector(_setGlyph:withBackgroundColor:), (IMP)_patched_ftt_meth_$_SFSiteIconView$_setGlyph$withBackgroundColor$, (IMP *)_orig_ftt_meth_$_SFSiteIconView$_setGlyph$withBackgroundColor$);
    MSHookMessageEx(_ftt_class__SFSiteIconView, @selector(_setMonogramWithString:backgroundColor:), (IMP)_patched_ftt_meth_$_SFSiteIconView$_setMonogramWithString$backgroundColor$, (IMP *)_orig_ftt_meth_$_SFSiteIconView$_setMonogramWithString$backgroundColor$);
    Class _ftt_class_VibrantLabelView = objc_getClass("VibrantLabelView");
    MSHookMessageEx(_ftt_class_VibrantLabelView, @selector(setNonVibrantColor:), (IMP)_patched_ftt_meth_$VibrantLabelView$setNonVibrantColor$, (IMP *)_orig_ftt_meth_$VibrantLabelView$setNonVibrantColor$);
    MSHookMessageEx(_ftt_class_VibrantLabelView, @selector(setUsesVibrantEffect:), (IMP)_patched_ftt_meth_$VibrantLabelView$setUsesVibrantEffect$, (IMP *)_orig_ftt_meth_$VibrantLabelView$setUsesVibrantEffect$);
}
