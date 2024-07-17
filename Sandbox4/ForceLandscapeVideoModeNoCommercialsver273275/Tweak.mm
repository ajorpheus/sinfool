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

@class DSOrientationManager; @class FWAd; @class StartupViewController; 
static int (*_logos_orig$_ungrouped$StartupViewController$forcedOrientation)(_LOGOS_SELF_TYPE_NORMAL StartupViewController* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$StartupViewController$forcedOrientation(_LOGOS_SELF_TYPE_NORMAL StartupViewController* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientation)(_LOGOS_SELF_TYPE_NORMAL DSOrientationManager* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientation(_LOGOS_SELF_TYPE_NORMAL DSOrientationManager* _LOGOS_SELF_CONST, SEL); static unsigned int (*_logos_orig$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientationMask)(_LOGOS_SELF_TYPE_NORMAL DSOrientationManager* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientationMask(_LOGOS_SELF_TYPE_NORMAL DSOrientationManager* _LOGOS_SELF_CONST, SEL); static unsigned int (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static int _logos_method$_ungrouped$StartupViewController$forcedOrientation(_LOGOS_SELF_TYPE_NORMAL StartupViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 3;
}



static int _logos_method$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientation(_LOGOS_SELF_TYPE_NORMAL DSOrientationManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 3;
}



static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static unsigned int _logos_method$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientationMask(_LOGOS_SELF_TYPE_NORMAL DSOrientationManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 3;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$StartupViewController = objc_getClass("StartupViewController"); { MSHookMessageEx(_logos_class$_ungrouped$StartupViewController, @selector(forcedOrientation), (IMP)&_logos_method$_ungrouped$StartupViewController$forcedOrientation, (IMP*)&_logos_orig$_ungrouped$StartupViewController$forcedOrientation);}Class _logos_class$_ungrouped$DSOrientationManager = objc_getClass("DSOrientationManager"); { MSHookMessageEx(_logos_class$_ungrouped$DSOrientationManager, @selector(currentForcedInterfaceOrientation), (IMP)&_logos_method$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientation, (IMP*)&_logos_orig$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientation);}{ MSHookMessageEx(_logos_class$_ungrouped$DSOrientationManager, @selector(currentForcedInterfaceOrientationMask), (IMP)&_logos_method$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientationMask, (IMP*)&_logos_orig$_ungrouped$DSOrientationManager$currentForcedInterfaceOrientationMask);}Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}} }
#line 28 "Tweak.xm"
