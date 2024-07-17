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

@class SBCenterIconZoomAnimator; @class SBCenterAppIconZoomAnimator; 
static unsigned long long (*_logos_orig$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations)(_LOGOS_SELF_TYPE_NORMAL SBCenterAppIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBCenterAppIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static unsigned long long (*_logos_orig$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations)(_LOGOS_SELF_TYPE_NORMAL SBCenterIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBCenterIconZoomAnimator* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBCenterAppIconZoomAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static unsigned long long _logos_method$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBCenterIconZoomAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBCenterAppIconZoomAnimator = objc_getClass("SBCenterAppIconZoomAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBCenterAppIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)&_logos_method$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations, (IMP*)&_logos_orig$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations);}Class _logos_class$_ungrouped$SBCenterIconZoomAnimator = objc_getClass("SBCenterIconZoomAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBCenterIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)&_logos_method$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations, (IMP*)&_logos_orig$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations);}} }
#line 17 "Tweak.xm"
