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

@class CKUIBehavior; @class CKUITheme; @class UISearchBarBackground; @class _SFNavigationBarURLButton; 
static id (*_logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, long long, double); static id _logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST, SEL, long long, double); static void (*_logos_orig$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$)(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBarURLButton* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBarURLButton* _LOGOS_SELF_CONST, SEL, double); static double (*_logos_orig$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKUITheme$entryFieldCoverFillColor)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUITheme$entryFieldCoverFillColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(_LOGOS_SELF_TYPE_NORMAL UISearchBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, double arg2) {
    
    arg2 = 0;
    return _logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBarURLButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(self, _cmd, arg1);
}



static double _logos_method$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static id _logos_method$_ungrouped$CKUITheme$entryFieldCoverFillColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UISearchBarBackground = objc_getClass("UISearchBarBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)&_logos_method$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP*)&_logos_orig$_ungrouped$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);}Class _logos_class$_ungrouped$_SFNavigationBarURLButton = objc_getClass("_SFNavigationBarURLButton"); { MSHookMessageEx(_logos_class$_ungrouped$_SFNavigationBarURLButton, @selector(setBackgroundAlphaFactor:), (IMP)&_logos_method$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$, (IMP*)&_logos_orig$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$);}Class _logos_class$_ungrouped$CKUIBehavior = objc_getClass("CKUIBehavior"); { MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(entryFieldCoverLineWidth), (IMP)&_logos_method$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$entryFieldCoverLineWidth);}Class _logos_class$_ungrouped$CKUITheme = objc_getClass("CKUITheme"); { MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(entryFieldCoverFillColor), (IMP)&_logos_method$_ungrouped$CKUITheme$entryFieldCoverFillColor, (IMP*)&_logos_orig$_ungrouped$CKUITheme$entryFieldCoverFillColor);}} }
#line 30 "Tweak.xm"
