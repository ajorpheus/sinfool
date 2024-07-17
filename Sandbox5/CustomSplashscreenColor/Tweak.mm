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

@class SBSceneLayoutWindow; @class SBAnimationFactorySettings; 
static void (*_logos_orig$_ungrouped$SBSceneLayoutWindow$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL SBSceneLayoutWindow* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBSceneLayoutWindow$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL SBSceneLayoutWindow* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBAnimationFactorySettings$setSlowDownFactor$)(_LOGOS_SELF_TYPE_NORMAL SBAnimationFactorySettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBAnimationFactorySettings$setSlowDownFactor$(_LOGOS_SELF_TYPE_NORMAL SBAnimationFactorySettings* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SBAnimationFactorySettings$setSlowAnimations$)(_LOGOS_SELF_TYPE_NORMAL SBAnimationFactorySettings* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBAnimationFactorySettings$setSlowAnimations$(_LOGOS_SELF_TYPE_NORMAL SBAnimationFactorySettings* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBSceneLayoutWindow$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL SBSceneLayoutWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SBSceneLayoutWindow$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBAnimationFactorySettings$setSlowDownFactor$(_LOGOS_SELF_TYPE_NORMAL SBAnimationFactorySettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBAnimationFactorySettings$setSlowDownFactor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBAnimationFactorySettings$setSlowAnimations$(_LOGOS_SELF_TYPE_NORMAL SBAnimationFactorySettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBAnimationFactorySettings$setSlowAnimations$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBSceneLayoutWindow = objc_getClass("SBSceneLayoutWindow"); { MSHookMessageEx(_logos_class$_ungrouped$SBSceneLayoutWindow, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$SBSceneLayoutWindow$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$SBSceneLayoutWindow$setBackgroundColor$);}Class _logos_class$_ungrouped$SBAnimationFactorySettings = objc_getClass("SBAnimationFactorySettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBAnimationFactorySettings, @selector(setSlowDownFactor:), (IMP)&_logos_method$_ungrouped$SBAnimationFactorySettings$setSlowDownFactor$, (IMP*)&_logos_orig$_ungrouped$SBAnimationFactorySettings$setSlowDownFactor$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBAnimationFactorySettings, @selector(setSlowAnimations:), (IMP)&_logos_method$_ungrouped$SBAnimationFactorySettings$setSlowAnimations$, (IMP*)&_logos_orig$_ungrouped$SBAnimationFactorySettings$setSlowAnimations$);}} }
#line 27 "Tweak.xm"
