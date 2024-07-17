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

@class FWVideoAdRenderer2; @class MMLSponsorshipManager; @class FWVideoAdRenderer; @class FWRendererController; 
static FWVideoAdRenderer* (*_logos_orig$_ungrouped$FWVideoAdRenderer$init)(_LOGOS_SELF_TYPE_INIT FWVideoAdRenderer*, SEL) _LOGOS_RETURN_RETAINED; static FWVideoAdRenderer* _logos_method$_ungrouped$FWVideoAdRenderer$init(_LOGOS_SELF_TYPE_INIT FWVideoAdRenderer*, SEL) _LOGOS_RETURN_RETAINED; static FWVideoAdRenderer2* (*_logos_orig$_ungrouped$FWVideoAdRenderer2$init)(_LOGOS_SELF_TYPE_INIT FWVideoAdRenderer2*, SEL) _LOGOS_RETURN_RETAINED; static FWVideoAdRenderer2* _logos_method$_ungrouped$FWVideoAdRenderer2$init(_LOGOS_SELF_TYPE_INIT FWVideoAdRenderer2*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$FWRendererController$_getSlotType)(_LOGOS_SELF_TYPE_NORMAL FWRendererController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$FWRendererController$_getSlotType(_LOGOS_SELF_TYPE_NORMAL FWRendererController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$MMLSponsorshipManager$sponsors)(_LOGOS_SELF_TYPE_NORMAL MMLSponsorshipManager* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$MMLSponsorshipManager$sponsors(_LOGOS_SELF_TYPE_NORMAL MMLSponsorshipManager* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static FWVideoAdRenderer* _logos_method$_ungrouped$FWVideoAdRenderer$init(_LOGOS_SELF_TYPE_INIT FWVideoAdRenderer* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static FWVideoAdRenderer2* _logos_method$_ungrouped$FWVideoAdRenderer2$init(_LOGOS_SELF_TYPE_INIT FWVideoAdRenderer2* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static id _logos_method$_ungrouped$FWRendererController$_getSlotType(_LOGOS_SELF_TYPE_NORMAL FWRendererController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$MMLSponsorshipManager$sponsors(_LOGOS_SELF_TYPE_NORMAL MMLSponsorshipManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$FWVideoAdRenderer = objc_getClass("FWVideoAdRenderer"); { MSHookMessageEx(_logos_class$_ungrouped$FWVideoAdRenderer, @selector(init), (IMP)&_logos_method$_ungrouped$FWVideoAdRenderer$init, (IMP*)&_logos_orig$_ungrouped$FWVideoAdRenderer$init);}Class _logos_class$_ungrouped$FWVideoAdRenderer2 = objc_getClass("FWVideoAdRenderer2"); { MSHookMessageEx(_logos_class$_ungrouped$FWVideoAdRenderer2, @selector(init), (IMP)&_logos_method$_ungrouped$FWVideoAdRenderer2$init, (IMP*)&_logos_orig$_ungrouped$FWVideoAdRenderer2$init);}Class _logos_class$_ungrouped$FWRendererController = objc_getClass("FWRendererController"); { MSHookMessageEx(_logos_class$_ungrouped$FWRendererController, @selector(_getSlotType), (IMP)&_logos_method$_ungrouped$FWRendererController$_getSlotType, (IMP*)&_logos_orig$_ungrouped$FWRendererController$_getSlotType);}Class _logos_class$_ungrouped$MMLSponsorshipManager = objc_getClass("MMLSponsorshipManager"); { MSHookMessageEx(_logos_class$_ungrouped$MMLSponsorshipManager, @selector(sponsors), (IMP)&_logos_method$_ungrouped$MMLSponsorshipManager$sponsors, (IMP*)&_logos_orig$_ungrouped$MMLSponsorshipManager$sponsors);}} }
#line 27 "Tweak.xm"
