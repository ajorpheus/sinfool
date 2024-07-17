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

@class VibrantLabelView; @class _SFSiteIconView; @class _SFNavigationBar; @class BookmarkFavoritesCollectionView; @class SFCrossfadingLabel; 
static bool (*_logos_orig$_ungrouped$_SFNavigationBar$isUsingLightControls)(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_SFNavigationBar$isUsingLightControls(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SFCrossfadingLabel$setFromColor$)(_LOGOS_SELF_TYPE_NORMAL SFCrossfadingLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SFCrossfadingLabel$setFromColor$(_LOGOS_SELF_TYPE_NORMAL SFCrossfadingLabel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$BookmarkFavoritesCollectionView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL BookmarkFavoritesCollectionView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$BookmarkFavoritesCollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL BookmarkFavoritesCollectionView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_SFSiteIconView$_setGlyph$withBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _SFSiteIconView* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$_SFSiteIconView$_setGlyph$withBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _SFSiteIconView* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$_SFSiteIconView$_setMonogramWithString$backgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _SFSiteIconView* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$_SFSiteIconView$_setMonogramWithString$backgroundColor$(_LOGOS_SELF_TYPE_NORMAL _SFSiteIconView* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$VibrantLabelView$setNonVibrantColor$)(_LOGOS_SELF_TYPE_NORMAL VibrantLabelView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$VibrantLabelView$setNonVibrantColor$(_LOGOS_SELF_TYPE_NORMAL VibrantLabelView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$VibrantLabelView$setUsesVibrantEffect$)(_LOGOS_SELF_TYPE_NORMAL VibrantLabelView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$VibrantLabelView$setUsesVibrantEffect$(_LOGOS_SELF_TYPE_NORMAL VibrantLabelView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$_SFNavigationBar$isUsingLightControls(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$SFCrossfadingLabel$setFromColor$(_LOGOS_SELF_TYPE_NORMAL SFCrossfadingLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SFCrossfadingLabel$setFromColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$BookmarkFavoritesCollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL BookmarkFavoritesCollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:26/255.0 green:26/255.0 blue:26/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$BookmarkFavoritesCollectionView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_SFSiteIconView$_setGlyph$withBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _SFSiteIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    
    arg2 = [UIColor colorWithRed:42/255.0 green:42/255.0 blue:42/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_SFSiteIconView$_setGlyph$withBackgroundColor$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$_SFSiteIconView$_setMonogramWithString$backgroundColor$(_LOGOS_SELF_TYPE_NORMAL _SFSiteIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    
    arg2 = [UIColor colorWithRed:42/255.0 green:42/255.0 blue:42/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_SFSiteIconView$_setMonogramWithString$backgroundColor$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$VibrantLabelView$setNonVibrantColor$(_LOGOS_SELF_TYPE_NORMAL VibrantLabelView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$VibrantLabelView$setNonVibrantColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$VibrantLabelView$setUsesVibrantEffect$(_LOGOS_SELF_TYPE_NORMAL VibrantLabelView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$VibrantLabelView$setUsesVibrantEffect$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_SFNavigationBar = objc_getClass("_SFNavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$_SFNavigationBar, @selector(isUsingLightControls), (IMP)&_logos_method$_ungrouped$_SFNavigationBar$isUsingLightControls, (IMP*)&_logos_orig$_ungrouped$_SFNavigationBar$isUsingLightControls);}Class _logos_class$_ungrouped$SFCrossfadingLabel = objc_getClass("SFCrossfadingLabel"); { MSHookMessageEx(_logos_class$_ungrouped$SFCrossfadingLabel, @selector(setFromColor:), (IMP)&_logos_method$_ungrouped$SFCrossfadingLabel$setFromColor$, (IMP*)&_logos_orig$_ungrouped$SFCrossfadingLabel$setFromColor$);}Class _logos_class$_ungrouped$BookmarkFavoritesCollectionView = objc_getClass("BookmarkFavoritesCollectionView"); { MSHookMessageEx(_logos_class$_ungrouped$BookmarkFavoritesCollectionView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$BookmarkFavoritesCollectionView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$BookmarkFavoritesCollectionView$setBackgroundColor$);}Class _logos_class$_ungrouped$_SFSiteIconView = objc_getClass("_SFSiteIconView"); { MSHookMessageEx(_logos_class$_ungrouped$_SFSiteIconView, @selector(_setGlyph:withBackgroundColor:), (IMP)&_logos_method$_ungrouped$_SFSiteIconView$_setGlyph$withBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_SFSiteIconView$_setGlyph$withBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$_SFSiteIconView, @selector(_setMonogramWithString:backgroundColor:), (IMP)&_logos_method$_ungrouped$_SFSiteIconView$_setMonogramWithString$backgroundColor$, (IMP*)&_logos_orig$_ungrouped$_SFSiteIconView$_setMonogramWithString$backgroundColor$);}Class _logos_class$_ungrouped$VibrantLabelView = objc_getClass("VibrantLabelView"); { MSHookMessageEx(_logos_class$_ungrouped$VibrantLabelView, @selector(setNonVibrantColor:), (IMP)&_logos_method$_ungrouped$VibrantLabelView$setNonVibrantColor$, (IMP*)&_logos_orig$_ungrouped$VibrantLabelView$setNonVibrantColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$VibrantLabelView, @selector(setUsesVibrantEffect:), (IMP)&_logos_method$_ungrouped$VibrantLabelView$setUsesVibrantEffect$, (IMP*)&_logos_orig$_ungrouped$VibrantLabelView$setUsesVibrantEffect$);}} }
#line 57 "Tweak.xm"
