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

@class SBCoverSheetTransitionSettings; 
static void (*_logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setBlursPanel$)(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBCoverSheetTransitionSettings$setBlursPanel$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setFadePanelWallpaper$)(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBCoverSheetTransitionSettings$setFadePanelWallpaper$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setFadesContent$)(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBCoverSheetTransitionSettings$setFadesContent$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBCoverSheetTransitionSettings$setBlursPanel$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setBlursPanel$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBCoverSheetTransitionSettings$setFadePanelWallpaper$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setFadePanelWallpaper$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBCoverSheetTransitionSettings$setFadesContent$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetTransitionSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setFadesContent$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBCoverSheetTransitionSettings = objc_getClass("SBCoverSheetTransitionSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBCoverSheetTransitionSettings, @selector(setBlursPanel:), (IMP)&_logos_method$_ungrouped$SBCoverSheetTransitionSettings$setBlursPanel$, (IMP*)&_logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setBlursPanel$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBCoverSheetTransitionSettings, @selector(setFadePanelWallpaper:), (IMP)&_logos_method$_ungrouped$SBCoverSheetTransitionSettings$setFadePanelWallpaper$, (IMP*)&_logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setFadePanelWallpaper$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBCoverSheetTransitionSettings, @selector(setFadesContent:), (IMP)&_logos_method$_ungrouped$SBCoverSheetTransitionSettings$setFadesContent$, (IMP*)&_logos_orig$_ungrouped$SBCoverSheetTransitionSettings$setFadesContent$);}} }
#line 24 "Tweak.xm"
