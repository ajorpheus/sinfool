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

@class SBUICallToActionLabel; 
static void (*_logos_orig$_ungrouped$SBUICallToActionLabel$setText$forLanguage$animated$)(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL, id, id, bool); static void _logos_method$_ungrouped$SBUICallToActionLabel$setText$forLanguage$animated$(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL, id, id, bool); static void (*_logos_orig$_ungrouped$SBUICallToActionLabel$fadeInImmediately$completion$)(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$SBUICallToActionLabel$fadeInImmediately$completion$(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL, bool, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBUICallToActionLabel$setText$forLanguage$animated$(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) {
    
    arg1 = @"Flex 3";
    _logos_orig$_ungrouped$SBUICallToActionLabel$setText$forLanguage$animated$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$SBUICallToActionLabel$fadeInImmediately$completion$(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBUICallToActionLabel$fadeInImmediately$completion$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBUICallToActionLabel = objc_getClass("SBUICallToActionLabel"); { MSHookMessageEx(_logos_class$_ungrouped$SBUICallToActionLabel, @selector(setText:forLanguage:animated:), (IMP)&_logos_method$_ungrouped$SBUICallToActionLabel$setText$forLanguage$animated$, (IMP*)&_logos_orig$_ungrouped$SBUICallToActionLabel$setText$forLanguage$animated$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBUICallToActionLabel, @selector(fadeInImmediately:completion:), (IMP)&_logos_method$_ungrouped$SBUICallToActionLabel$fadeInImmediately$completion$, (IMP*)&_logos_orig$_ungrouped$SBUICallToActionLabel$fadeInImmediately$completion$);}} }
#line 19 "Tweak.xm"
