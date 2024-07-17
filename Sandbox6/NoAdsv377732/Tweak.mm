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

@class Track; @class RadioConstraints; @class GPMAdController; 
static GPMAdController* (*_logos_orig$_ungrouped$GPMAdController$init)(_LOGOS_SELF_TYPE_INIT GPMAdController*, SEL) _LOGOS_RETURN_RETAINED; static GPMAdController* _logos_method$_ungrouped$GPMAdController$init(_LOGOS_SELF_TYPE_INIT GPMAdController*, SEL) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$Track$isAudioAd)(_LOGOS_SELF_TYPE_NORMAL Track* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Track$isAudioAd(_LOGOS_SELF_TYPE_NORMAL Track* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$RadioConstraints$skipEnforcementPeriod)(_LOGOS_SELF_TYPE_NORMAL RadioConstraints* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$RadioConstraints$skipEnforcementPeriod(_LOGOS_SELF_TYPE_NORMAL RadioConstraints* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static GPMAdController* _logos_method$_ungrouped$GPMAdController$init(_LOGOS_SELF_TYPE_INIT GPMAdController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static bool _logos_method$_ungrouped$Track$isAudioAd(_LOGOS_SELF_TYPE_NORMAL Track* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static double _logos_method$_ungrouped$RadioConstraints$skipEnforcementPeriod(_LOGOS_SELF_TYPE_NORMAL RadioConstraints* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GPMAdController = objc_getClass("GPMAdController"); { MSHookMessageEx(_logos_class$_ungrouped$GPMAdController, @selector(init), (IMP)&_logos_method$_ungrouped$GPMAdController$init, (IMP*)&_logos_orig$_ungrouped$GPMAdController$init);}Class _logos_class$_ungrouped$Track = objc_getClass("Track"); { MSHookMessageEx(_logos_class$_ungrouped$Track, @selector(isAudioAd), (IMP)&_logos_method$_ungrouped$Track$isAudioAd, (IMP*)&_logos_orig$_ungrouped$Track$isAudioAd);}Class _logos_class$_ungrouped$RadioConstraints = objc_getClass("RadioConstraints"); { MSHookMessageEx(_logos_class$_ungrouped$RadioConstraints, @selector(skipEnforcementPeriod), (IMP)&_logos_method$_ungrouped$RadioConstraints$skipEnforcementPeriod, (IMP*)&_logos_orig$_ungrouped$RadioConstraints$skipEnforcementPeriod);}} }
#line 21 "Tweak.xm"
