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

@class SBScreenEdgePanGestureRecognizer; @class SBGrabberTongue; 
static bool (*_logos_orig$_ungrouped$SBScreenEdgePanGestureRecognizer$isLocationWithinGrabberActiveZone)(_LOGOS_SELF_TYPE_NORMAL SBScreenEdgePanGestureRecognizer* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBScreenEdgePanGestureRecognizer$isLocationWithinGrabberActiveZone(_LOGOS_SELF_TYPE_NORMAL SBScreenEdgePanGestureRecognizer* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBGrabberTongue$_recognizerIsWithinGrabberZone$)(_LOGOS_SELF_TYPE_NORMAL SBGrabberTongue* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$SBGrabberTongue$_recognizerIsWithinGrabberZone$(_LOGOS_SELF_TYPE_NORMAL SBGrabberTongue* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBScreenEdgePanGestureRecognizer$isLocationWithinGrabberActiveZone(_LOGOS_SELF_TYPE_NORMAL SBScreenEdgePanGestureRecognizer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$SBGrabberTongue$_recognizerIsWithinGrabberZone$(_LOGOS_SELF_TYPE_NORMAL SBGrabberTongue* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBScreenEdgePanGestureRecognizer = objc_getClass("SBScreenEdgePanGestureRecognizer"); { MSHookMessageEx(_logos_class$_ungrouped$SBScreenEdgePanGestureRecognizer, @selector(isLocationWithinGrabberActiveZone), (IMP)&_logos_method$_ungrouped$SBScreenEdgePanGestureRecognizer$isLocationWithinGrabberActiveZone, (IMP*)&_logos_orig$_ungrouped$SBScreenEdgePanGestureRecognizer$isLocationWithinGrabberActiveZone);}Class _logos_class$_ungrouped$SBGrabberTongue = objc_getClass("SBGrabberTongue"); { MSHookMessageEx(_logos_class$_ungrouped$SBGrabberTongue, @selector(_recognizerIsWithinGrabberZone:), (IMP)&_logos_method$_ungrouped$SBGrabberTongue$_recognizerIsWithinGrabberZone$, (IMP*)&_logos_orig$_ungrouped$SBGrabberTongue$_recognizerIsWithinGrabberZone$);}} }
#line 17 "Tweak.xm"
