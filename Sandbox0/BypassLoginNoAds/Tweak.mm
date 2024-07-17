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

@class GADAdFetcher; @class NBCSEventItem; @class PTMediaPlayerItem; 
static BOOL (*_logos_orig$_ungrouped$NBCSEventItem$free)(_LOGOS_SELF_TYPE_NORMAL NBCSEventItem* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$NBCSEventItem$free(_LOGOS_SELF_TYPE_NORMAL NBCSEventItem* _LOGOS_SELF_CONST, SEL); static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$initWithDelegate$)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL, id) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$initWithDelegate$(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL, id) _LOGOS_RETURN_RETAINED; static BOOL (*_logos_orig$_ungrouped$PTMediaPlayerItem$skipLivePreroll)(_LOGOS_SELF_TYPE_NORMAL PTMediaPlayerItem* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$PTMediaPlayerItem$skipLivePreroll(_LOGOS_SELF_TYPE_NORMAL PTMediaPlayerItem* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$NBCSEventItem$free(_LOGOS_SELF_TYPE_NORMAL NBCSEventItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$initWithDelegate$(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    arg1 = NULL;
    return _logos_orig$_ungrouped$GADAdFetcher$initWithDelegate$(self, _cmd, arg1);
}



static BOOL _logos_method$_ungrouped$PTMediaPlayerItem$skipLivePreroll(_LOGOS_SELF_TYPE_NORMAL PTMediaPlayerItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NBCSEventItem = objc_getClass("NBCSEventItem"); { MSHookMessageEx(_logos_class$_ungrouped$NBCSEventItem, @selector(free), (IMP)&_logos_method$_ungrouped$NBCSEventItem$free, (IMP*)&_logos_orig$_ungrouped$NBCSEventItem$free);}Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(initWithDelegate:), (IMP)&_logos_method$_ungrouped$GADAdFetcher$initWithDelegate$, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$initWithDelegate$);}Class _logos_class$_ungrouped$PTMediaPlayerItem = objc_getClass("PTMediaPlayerItem"); { MSHookMessageEx(_logos_class$_ungrouped$PTMediaPlayerItem, @selector(skipLivePreroll), (IMP)&_logos_method$_ungrouped$PTMediaPlayerItem$skipLivePreroll, (IMP*)&_logos_orig$_ungrouped$PTMediaPlayerItem$skipLivePreroll);}} }
#line 22 "Tweak.xm"
