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

@class SXMClientDMCAManagaer; @class SXMPlayhead; @class SXMDMCAManager; 
static SXMClientDMCAManagaer* (*_logos_orig$_ungrouped$SXMClientDMCAManagaer$init)(_LOGOS_SELF_TYPE_INIT SXMClientDMCAManagaer*, SEL) _LOGOS_RETURN_RETAINED; static SXMClientDMCAManagaer* _logos_method$_ungrouped$SXMClientDMCAManagaer$init(_LOGOS_SELF_TYPE_INIT SXMClientDMCAManagaer*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$SXMPlayhead$lblSkipsLeftCount)(_LOGOS_SELF_TYPE_NORMAL SXMPlayhead* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SXMPlayhead$lblSkipsLeftCount(_LOGOS_SELF_TYPE_NORMAL SXMPlayhead* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SXMDMCAManager$dmca)(_LOGOS_SELF_TYPE_NORMAL SXMDMCAManager* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SXMDMCAManager$dmca(_LOGOS_SELF_TYPE_NORMAL SXMDMCAManager* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static SXMClientDMCAManagaer* _logos_method$_ungrouped$SXMClientDMCAManagaer$init(_LOGOS_SELF_TYPE_INIT SXMClientDMCAManagaer* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static id _logos_method$_ungrouped$SXMPlayhead$lblSkipsLeftCount(_LOGOS_SELF_TYPE_NORMAL SXMPlayhead* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$SXMDMCAManager$dmca(_LOGOS_SELF_TYPE_NORMAL SXMDMCAManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SXMClientDMCAManagaer = objc_getClass("SXMClientDMCAManagaer"); { MSHookMessageEx(_logos_class$_ungrouped$SXMClientDMCAManagaer, @selector(init), (IMP)&_logos_method$_ungrouped$SXMClientDMCAManagaer$init, (IMP*)&_logos_orig$_ungrouped$SXMClientDMCAManagaer$init);}Class _logos_class$_ungrouped$SXMPlayhead = objc_getClass("SXMPlayhead"); { MSHookMessageEx(_logos_class$_ungrouped$SXMPlayhead, @selector(lblSkipsLeftCount), (IMP)&_logos_method$_ungrouped$SXMPlayhead$lblSkipsLeftCount, (IMP*)&_logos_orig$_ungrouped$SXMPlayhead$lblSkipsLeftCount);}Class _logos_class$_ungrouped$SXMDMCAManager = objc_getClass("SXMDMCAManager"); { MSHookMessageEx(_logos_class$_ungrouped$SXMDMCAManager, @selector(dmca), (IMP)&_logos_method$_ungrouped$SXMDMCAManager$dmca, (IMP*)&_logos_orig$_ungrouped$SXMDMCAManager$dmca);}} }
#line 24 "Tweak.xm"
