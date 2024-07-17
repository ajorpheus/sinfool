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

@class PlayController; @class ShuffleFeatureImplementation; @class SPTPlayerRestrictions; 
static PlayController* (*_logos_orig$_ungrouped$PlayController$initWithSession$adController$)(_LOGOS_SELF_TYPE_INIT PlayController*, SEL, id, id) _LOGOS_RETURN_RETAINED; static PlayController* _logos_method$_ungrouped$PlayController$initWithSession$adController$(_LOGOS_SELF_TYPE_INIT PlayController*, SEL, id, id) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$ShuffleFeatureImplementation$baseUI)(_LOGOS_SELF_TYPE_NORMAL ShuffleFeatureImplementation* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$ShuffleFeatureImplementation$baseUI(_LOGOS_SELF_TYPE_NORMAL ShuffleFeatureImplementation* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowSeeking)(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SPTPlayerRestrictions$disallowSeeking(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtPreviousTrack)(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtPreviousTrack(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtNextTrack)(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtNextTrack(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowSkippingToPreviousTrackReasons)(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SPTPlayerRestrictions$disallowSkippingToPreviousTrackReasons(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowSkippingToNextTrackReasons)(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SPTPlayerRestrictions$disallowSkippingToNextTrackReasons(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static PlayController* _logos_method$_ungrouped$PlayController$initWithSession$adController$(_LOGOS_SELF_TYPE_INIT PlayController* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    
    arg2 = NULL;
    return _logos_orig$_ungrouped$PlayController$initWithSession$adController$(self, _cmd, arg1, arg2);
}



static id _logos_method$_ungrouped$ShuffleFeatureImplementation$baseUI(_LOGOS_SELF_TYPE_NORMAL ShuffleFeatureImplementation* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static BOOL _logos_method$_ungrouped$SPTPlayerRestrictions$disallowSeeking(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static BOOL _logos_method$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtPreviousTrack(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static BOOL _logos_method$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtNextTrack(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static id _logos_method$_ungrouped$SPTPlayerRestrictions$disallowSkippingToPreviousTrackReasons(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$SPTPlayerRestrictions$disallowSkippingToNextTrackReasons(_LOGOS_SELF_TYPE_NORMAL SPTPlayerRestrictions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PlayController = objc_getClass("PlayController"); { MSHookMessageEx(_logos_class$_ungrouped$PlayController, @selector(initWithSession:adController:), (IMP)&_logos_method$_ungrouped$PlayController$initWithSession$adController$, (IMP*)&_logos_orig$_ungrouped$PlayController$initWithSession$adController$);}Class _logos_class$_ungrouped$ShuffleFeatureImplementation = objc_getClass("ShuffleFeatureImplementation"); { MSHookMessageEx(_logos_class$_ungrouped$ShuffleFeatureImplementation, @selector(baseUI), (IMP)&_logos_method$_ungrouped$ShuffleFeatureImplementation$baseUI, (IMP*)&_logos_orig$_ungrouped$ShuffleFeatureImplementation$baseUI);}Class _logos_class$_ungrouped$SPTPlayerRestrictions = objc_getClass("SPTPlayerRestrictions"); { MSHookMessageEx(_logos_class$_ungrouped$SPTPlayerRestrictions, @selector(disallowSeeking), (IMP)&_logos_method$_ungrouped$SPTPlayerRestrictions$disallowSeeking, (IMP*)&_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowSeeking);}{ MSHookMessageEx(_logos_class$_ungrouped$SPTPlayerRestrictions, @selector(disallowPeekingAtPreviousTrack), (IMP)&_logos_method$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtPreviousTrack, (IMP*)&_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtPreviousTrack);}{ MSHookMessageEx(_logos_class$_ungrouped$SPTPlayerRestrictions, @selector(disallowPeekingAtNextTrack), (IMP)&_logos_method$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtNextTrack, (IMP*)&_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowPeekingAtNextTrack);}{ MSHookMessageEx(_logos_class$_ungrouped$SPTPlayerRestrictions, @selector(disallowSkippingToPreviousTrackReasons), (IMP)&_logos_method$_ungrouped$SPTPlayerRestrictions$disallowSkippingToPreviousTrackReasons, (IMP*)&_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowSkippingToPreviousTrackReasons);}{ MSHookMessageEx(_logos_class$_ungrouped$SPTPlayerRestrictions, @selector(disallowSkippingToNextTrackReasons), (IMP)&_logos_method$_ungrouped$SPTPlayerRestrictions$disallowSkippingToNextTrackReasons, (IMP*)&_logos_orig$_ungrouped$SPTPlayerRestrictions$disallowSkippingToNextTrackReasons);}} }
#line 53 "Tweak.xm"
