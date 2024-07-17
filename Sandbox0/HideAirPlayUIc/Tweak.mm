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

@class MPAVRoutingController; @class SBMediaController; 
static bool (*_logos_orig$_ungrouped$SBMediaController$routeOtherThanHandsetIsAvailable)(_LOGOS_SELF_TYPE_NORMAL SBMediaController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBMediaController$routeOtherThanHandsetIsAvailable(_LOGOS_SELF_TYPE_NORMAL SBMediaController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAvailable)(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAvailable(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAndSpeakerAvailable)(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAndSpeakerAvailable(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBMediaController$routeOtherThanHandsetIsAvailable(_LOGOS_SELF_TYPE_NORMAL SBMediaController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAvailable(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAndSpeakerAvailable(_LOGOS_SELF_TYPE_NORMAL MPAVRoutingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBMediaController = objc_getClass("SBMediaController"); { MSHookMessageEx(_logos_class$_ungrouped$SBMediaController, @selector(routeOtherThanHandsetIsAvailable), (IMP)&_logos_method$_ungrouped$SBMediaController$routeOtherThanHandsetIsAvailable, (IMP*)&_logos_orig$_ungrouped$SBMediaController$routeOtherThanHandsetIsAvailable);}Class _logos_class$_ungrouped$MPAVRoutingController = objc_getClass("MPAVRoutingController"); { MSHookMessageEx(_logos_class$_ungrouped$MPAVRoutingController, @selector(routeOtherThanHandsetAvailable), (IMP)&_logos_method$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAvailable, (IMP*)&_logos_orig$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAvailable);}{ MSHookMessageEx(_logos_class$_ungrouped$MPAVRoutingController, @selector(routeOtherThanHandsetAndSpeakerAvailable), (IMP)&_logos_method$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAndSpeakerAvailable, (IMP*)&_logos_orig$_ungrouped$MPAVRoutingController$routeOtherThanHandsetAndSpeakerAvailable);}} }
#line 22 "Tweak.xm"
