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

@class TMOAccountInfo; 
static BOOL (*_logos_orig$_ungrouped$TMOAccountInfo$mustShowAds)(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$TMOAccountInfo$mustShowAds(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$TMOAccountInfo$isPremiumBackgroundUnlocked)(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$TMOAccountInfo$isPremiumBackgroundUnlocked(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$TMOAccountInfo$isPremiumRingtonePackUnlocked)(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$TMOAccountInfo$isPremiumRingtonePackUnlocked(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$TMOAccountInfo$mustShowAds(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$TMOAccountInfo$isPremiumBackgroundUnlocked(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$TMOAccountInfo$isPremiumRingtonePackUnlocked(_LOGOS_SELF_TYPE_NORMAL TMOAccountInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TMOAccountInfo = objc_getClass("TMOAccountInfo"); { MSHookMessageEx(_logos_class$_ungrouped$TMOAccountInfo, @selector(mustShowAds), (IMP)&_logos_method$_ungrouped$TMOAccountInfo$mustShowAds, (IMP*)&_logos_orig$_ungrouped$TMOAccountInfo$mustShowAds);}{ MSHookMessageEx(_logos_class$_ungrouped$TMOAccountInfo, @selector(isPremiumBackgroundUnlocked), (IMP)&_logos_method$_ungrouped$TMOAccountInfo$isPremiumBackgroundUnlocked, (IMP*)&_logos_orig$_ungrouped$TMOAccountInfo$isPremiumBackgroundUnlocked);}{ MSHookMessageEx(_logos_class$_ungrouped$TMOAccountInfo, @selector(isPremiumRingtonePackUnlocked), (IMP)&_logos_method$_ungrouped$TMOAccountInfo$isPremiumRingtonePackUnlocked, (IMP*)&_logos_orig$_ungrouped$TMOAccountInfo$isPremiumRingtonePackUnlocked);}} }
#line 21 "Tweak.xm"
