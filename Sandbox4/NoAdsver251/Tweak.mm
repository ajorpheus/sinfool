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

@class CSComScore; @class FWAdManager; @class GADDevice; @class BugSenseJSONGenerator; @class HSPersistentDataModel; @class CSCore; @class Utils; 
static FWAdManager* (*_logos_orig$_ungrouped$FWAdManager$init)(_LOGOS_SELF_TYPE_INIT FWAdManager*, SEL) _LOGOS_RETURN_RETAINED; static FWAdManager* _logos_method$_ungrouped$FWAdManager$init(_LOGOS_SELF_TYPE_INIT FWAdManager*, SEL) _LOGOS_RETURN_RETAINED; static bool (*_logos_meta_orig$_ungrouped$CSComScore$isJailbroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$CSComScore$isJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CSCore$isJailBroken)(_LOGOS_SELF_TYPE_NORMAL CSCore* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CSCore$isJailBroken(_LOGOS_SELF_TYPE_NORMAL CSCore* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$GADDevice$isJailbroken)(_LOGOS_SELF_TYPE_NORMAL GADDevice* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$GADDevice$isJailbroken(_LOGOS_SELF_TYPE_NORMAL GADDevice* _LOGOS_SELF_CONST, SEL); static bool (*_logos_meta_orig$_ungrouped$Utils$isDeviceJailBroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$Utils$isDeviceJailBroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool (*_logos_meta_orig$_ungrouped$HSPersistentDataModel$isJailbroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$HSPersistentDataModel$isJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool (*_logos_meta_orig$_ungrouped$BugSenseJSONGenerator$isJailbroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$BugSenseJSONGenerator$isJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static FWAdManager* _logos_method$_ungrouped$FWAdManager$init(_LOGOS_SELF_TYPE_INIT FWAdManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static bool _logos_meta_method$_ungrouped$CSComScore$isJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$CSCore$isJailBroken(_LOGOS_SELF_TYPE_NORMAL CSCore* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$GADDevice$isJailbroken(_LOGOS_SELF_TYPE_NORMAL GADDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_meta_method$_ungrouped$Utils$isDeviceJailBroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_meta_method$_ungrouped$HSPersistentDataModel$isJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_meta_method$_ungrouped$BugSenseJSONGenerator$isJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$FWAdManager = objc_getClass("FWAdManager"); { MSHookMessageEx(_logos_class$_ungrouped$FWAdManager, @selector(init), (IMP)&_logos_method$_ungrouped$FWAdManager$init, (IMP*)&_logos_orig$_ungrouped$FWAdManager$init);}Class _logos_class$_ungrouped$CSComScore = objc_getClass("CSComScore"); Class _logos_metaclass$_ungrouped$CSComScore = object_getClass(_logos_class$_ungrouped$CSComScore); { MSHookMessageEx(_logos_metaclass$_ungrouped$CSComScore, @selector(isJailbroken), (IMP)&_logos_meta_method$_ungrouped$CSComScore$isJailbroken, (IMP*)&_logos_meta_orig$_ungrouped$CSComScore$isJailbroken);}Class _logos_class$_ungrouped$CSCore = objc_getClass("CSCore"); { MSHookMessageEx(_logos_class$_ungrouped$CSCore, @selector(isJailBroken), (IMP)&_logos_method$_ungrouped$CSCore$isJailBroken, (IMP*)&_logos_orig$_ungrouped$CSCore$isJailBroken);}Class _logos_class$_ungrouped$GADDevice = objc_getClass("GADDevice"); { MSHookMessageEx(_logos_class$_ungrouped$GADDevice, @selector(isJailbroken), (IMP)&_logos_method$_ungrouped$GADDevice$isJailbroken, (IMP*)&_logos_orig$_ungrouped$GADDevice$isJailbroken);}Class _logos_class$_ungrouped$Utils = objc_getClass("Utils"); Class _logos_metaclass$_ungrouped$Utils = object_getClass(_logos_class$_ungrouped$Utils); { MSHookMessageEx(_logos_metaclass$_ungrouped$Utils, @selector(isDeviceJailBroken), (IMP)&_logos_meta_method$_ungrouped$Utils$isDeviceJailBroken, (IMP*)&_logos_meta_orig$_ungrouped$Utils$isDeviceJailBroken);}Class _logos_class$_ungrouped$HSPersistentDataModel = objc_getClass("HSPersistentDataModel"); Class _logos_metaclass$_ungrouped$HSPersistentDataModel = object_getClass(_logos_class$_ungrouped$HSPersistentDataModel); { MSHookMessageEx(_logos_metaclass$_ungrouped$HSPersistentDataModel, @selector(isJailbroken), (IMP)&_logos_meta_method$_ungrouped$HSPersistentDataModel$isJailbroken, (IMP*)&_logos_meta_orig$_ungrouped$HSPersistentDataModel$isJailbroken);}Class _logos_class$_ungrouped$BugSenseJSONGenerator = objc_getClass("BugSenseJSONGenerator"); Class _logos_metaclass$_ungrouped$BugSenseJSONGenerator = object_getClass(_logos_class$_ungrouped$BugSenseJSONGenerator); { MSHookMessageEx(_logos_metaclass$_ungrouped$BugSenseJSONGenerator, @selector(isJailbroken), (IMP)&_logos_meta_method$_ungrouped$BugSenseJSONGenerator$isJailbroken, (IMP*)&_logos_meta_orig$_ungrouped$BugSenseJSONGenerator$isJailbroken);}} }
#line 45 "Tweak.xm"
