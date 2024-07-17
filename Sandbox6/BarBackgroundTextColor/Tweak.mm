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

@class MainChromeViewItem; @class MNGuidanceSignDistanceLabel; @class MNGuidanceSignInstructionsLabel; 
static void (*_logos_orig$_ungrouped$MNGuidanceSignDistanceLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL MNGuidanceSignDistanceLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MNGuidanceSignDistanceLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL MNGuidanceSignDistanceLabel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MNGuidanceSignInstructionsLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL MNGuidanceSignInstructionsLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MNGuidanceSignInstructionsLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL MNGuidanceSignInstructionsLabel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MainChromeViewItem$setBlurColor$)(_LOGOS_SELF_TYPE_NORMAL MainChromeViewItem* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MainChromeViewItem$setBlurColor$(_LOGOS_SELF_TYPE_NORMAL MainChromeViewItem* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$MNGuidanceSignDistanceLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL MNGuidanceSignDistanceLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$MNGuidanceSignDistanceLabel$setTextColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$MNGuidanceSignInstructionsLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL MNGuidanceSignInstructionsLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$MNGuidanceSignInstructionsLabel$setTextColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$MainChromeViewItem$setBlurColor$(_LOGOS_SELF_TYPE_NORMAL MainChromeViewItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:72/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$MainChromeViewItem$setBlurColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MNGuidanceSignDistanceLabel = objc_getClass("MNGuidanceSignDistanceLabel"); { MSHookMessageEx(_logos_class$_ungrouped$MNGuidanceSignDistanceLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$MNGuidanceSignDistanceLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$MNGuidanceSignDistanceLabel$setTextColor$);}Class _logos_class$_ungrouped$MNGuidanceSignInstructionsLabel = objc_getClass("MNGuidanceSignInstructionsLabel"); { MSHookMessageEx(_logos_class$_ungrouped$MNGuidanceSignInstructionsLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$MNGuidanceSignInstructionsLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$MNGuidanceSignInstructionsLabel$setTextColor$);}Class _logos_class$_ungrouped$MainChromeViewItem = objc_getClass("MainChromeViewItem"); { MSHookMessageEx(_logos_class$_ungrouped$MainChromeViewItem, @selector(setBlurColor:), (IMP)&_logos_method$_ungrouped$MainChromeViewItem$setBlurColor$, (IMP*)&_logos_orig$_ungrouped$MainChromeViewItem$setBlurColor$);}} }
#line 27 "Tweak.xm"
