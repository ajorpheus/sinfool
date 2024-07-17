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

@class StreamQualitySettingsSection; @class PlayController; 
static int (*_logos_orig$_ungrouped$StreamQualitySettingsSection$numberOfChoices)(_LOGOS_SELF_TYPE_NORMAL StreamQualitySettingsSection* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$StreamQualitySettingsSection$numberOfChoices(_LOGOS_SELF_TYPE_NORMAL StreamQualitySettingsSection* _LOGOS_SELF_CONST, SEL); static PlayController* (*_logos_orig$_ungrouped$PlayController$initWithSession$adController$)(_LOGOS_SELF_TYPE_INIT PlayController*, SEL, id, id) _LOGOS_RETURN_RETAINED; static PlayController* _logos_method$_ungrouped$PlayController$initWithSession$adController$(_LOGOS_SELF_TYPE_INIT PlayController*, SEL, id, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static int _logos_method$_ungrouped$StreamQualitySettingsSection$numberOfChoices(_LOGOS_SELF_TYPE_NORMAL StreamQualitySettingsSection* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 3;
}



static PlayController* _logos_method$_ungrouped$PlayController$initWithSession$adController$(_LOGOS_SELF_TYPE_INIT PlayController* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    
    arg2 = NULL;
    return _logos_orig$_ungrouped$PlayController$initWithSession$adController$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$StreamQualitySettingsSection = objc_getClass("StreamQualitySettingsSection"); { MSHookMessageEx(_logos_class$_ungrouped$StreamQualitySettingsSection, @selector(numberOfChoices), (IMP)&_logos_method$_ungrouped$StreamQualitySettingsSection$numberOfChoices, (IMP*)&_logos_orig$_ungrouped$StreamQualitySettingsSection$numberOfChoices);}Class _logos_class$_ungrouped$PlayController = objc_getClass("PlayController"); { MSHookMessageEx(_logos_class$_ungrouped$PlayController, @selector(initWithSession:adController:), (IMP)&_logos_method$_ungrouped$PlayController$initWithSession$adController$, (IMP*)&_logos_orig$_ungrouped$PlayController$initWithSession$adController$);}} }
#line 18 "Tweak.xm"
