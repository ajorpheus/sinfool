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

@class MusicStoreBag; @class MusicUserInterfaceStatusController; @class RadioAvailabilityController; 
static bool (*_logos_orig$_ungrouped$MusicUserInterfaceStatusController$_isMusicSubscriptionServiceRestricted)(_LOGOS_SELF_TYPE_NORMAL MusicUserInterfaceStatusController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$MusicUserInterfaceStatusController$_isMusicSubscriptionServiceRestricted(_LOGOS_SELF_TYPE_NORMAL MusicUserInterfaceStatusController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$RadioAvailabilityController$isRadioAvailable)(_LOGOS_SELF_TYPE_NORMAL RadioAvailabilityController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$RadioAvailabilityController$isRadioAvailable(_LOGOS_SELF_TYPE_NORMAL RadioAvailabilityController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$MusicStoreBag$supportsConnect)(_LOGOS_SELF_TYPE_NORMAL MusicStoreBag* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$MusicStoreBag$supportsConnect(_LOGOS_SELF_TYPE_NORMAL MusicStoreBag* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$MusicUserInterfaceStatusController$_isMusicSubscriptionServiceRestricted(_LOGOS_SELF_TYPE_NORMAL MusicUserInterfaceStatusController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$RadioAvailabilityController$isRadioAvailable(_LOGOS_SELF_TYPE_NORMAL RadioAvailabilityController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$MusicStoreBag$supportsConnect(_LOGOS_SELF_TYPE_NORMAL MusicStoreBag* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MusicUserInterfaceStatusController = objc_getClass("MusicUserInterfaceStatusController"); { MSHookMessageEx(_logos_class$_ungrouped$MusicUserInterfaceStatusController, @selector(_isMusicSubscriptionServiceRestricted), (IMP)&_logos_method$_ungrouped$MusicUserInterfaceStatusController$_isMusicSubscriptionServiceRestricted, (IMP*)&_logos_orig$_ungrouped$MusicUserInterfaceStatusController$_isMusicSubscriptionServiceRestricted);}Class _logos_class$_ungrouped$RadioAvailabilityController = objc_getClass("RadioAvailabilityController"); { MSHookMessageEx(_logos_class$_ungrouped$RadioAvailabilityController, @selector(isRadioAvailable), (IMP)&_logos_method$_ungrouped$RadioAvailabilityController$isRadioAvailable, (IMP*)&_logos_orig$_ungrouped$RadioAvailabilityController$isRadioAvailable);}Class _logos_class$_ungrouped$MusicStoreBag = objc_getClass("MusicStoreBag"); { MSHookMessageEx(_logos_class$_ungrouped$MusicStoreBag, @selector(supportsConnect), (IMP)&_logos_method$_ungrouped$MusicStoreBag$supportsConnect, (IMP*)&_logos_orig$_ungrouped$MusicStoreBag$supportsConnect);}} }
#line 24 "Tweak.xm"
