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

@class _SFNavigationBarURLButton; @class _SFFluidProgressView; 
static void (*_logos_orig$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$)(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBarURLButton* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBarURLButton* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$_SFFluidProgressView$setCornerRadius$)(_LOGOS_SELF_TYPE_NORMAL _SFFluidProgressView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$_SFFluidProgressView$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL _SFFluidProgressView* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$_SFFluidProgressView$setProgressBarFillColor$)(_LOGOS_SELF_TYPE_NORMAL _SFFluidProgressView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_SFFluidProgressView$setProgressBarFillColor$(_LOGOS_SELF_TYPE_NORMAL _SFFluidProgressView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(_LOGOS_SELF_TYPE_NORMAL _SFNavigationBarURLButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_SFFluidProgressView$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL _SFFluidProgressView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.0001;
    _logos_orig$_ungrouped$_SFFluidProgressView$setCornerRadius$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_SFFluidProgressView$setProgressBarFillColor$(_LOGOS_SELF_TYPE_NORMAL _SFFluidProgressView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_SFFluidProgressView$setProgressBarFillColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_SFNavigationBarURLButton = objc_getClass("_SFNavigationBarURLButton"); { MSHookMessageEx(_logos_class$_ungrouped$_SFNavigationBarURLButton, @selector(setBackgroundAlphaFactor:), (IMP)&_logos_method$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$, (IMP*)&_logos_orig$_ungrouped$_SFNavigationBarURLButton$setBackgroundAlphaFactor$);}Class _logos_class$_ungrouped$_SFFluidProgressView = objc_getClass("_SFFluidProgressView"); { MSHookMessageEx(_logos_class$_ungrouped$_SFFluidProgressView, @selector(setCornerRadius:), (IMP)&_logos_method$_ungrouped$_SFFluidProgressView$setCornerRadius$, (IMP*)&_logos_orig$_ungrouped$_SFFluidProgressView$setCornerRadius$);}{ MSHookMessageEx(_logos_class$_ungrouped$_SFFluidProgressView, @selector(setProgressBarFillColor:), (IMP)&_logos_method$_ungrouped$_SFFluidProgressView$setProgressBarFillColor$, (IMP*)&_logos_orig$_ungrouped$_SFFluidProgressView$setProgressBarFillColor$);}} }
#line 27 "Tweak.xm"
