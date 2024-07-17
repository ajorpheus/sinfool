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

@class ABVideoControlCenter; @class GADAdFetcher; 
static bool (*_logos_orig$_ungrouped$GADAdFetcher$fetchRequestURL$delegate$responseHeaders$responseAd$error$)(_LOGOS_SELF_TYPE_NORMAL GADAdFetcher* _LOGOS_SELF_CONST, SEL, id, id, id, id, id*); static bool _logos_method$_ungrouped$GADAdFetcher$fetchRequestURL$delegate$responseHeaders$responseAd$error$(_LOGOS_SELF_TYPE_NORMAL GADAdFetcher* _LOGOS_SELF_CONST, SEL, id, id, id, id, id*); static bool (*_logos_orig$_ungrouped$ABVideoControlCenter$prerollEnabled)(_LOGOS_SELF_TYPE_NORMAL ABVideoControlCenter* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$ABVideoControlCenter$prerollEnabled(_LOGOS_SELF_TYPE_NORMAL ABVideoControlCenter* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$GADAdFetcher$fetchRequestURL$delegate$responseHeaders$responseAd$error$(_LOGOS_SELF_TYPE_NORMAL GADAdFetcher* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, id* arg5) {
    return 0;
}



static bool _logos_method$_ungrouped$ABVideoControlCenter$prerollEnabled(_LOGOS_SELF_TYPE_NORMAL ABVideoControlCenter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(fetchRequestURL:delegate:responseHeaders:responseAd:error:), (IMP)&_logos_method$_ungrouped$GADAdFetcher$fetchRequestURL$delegate$responseHeaders$responseAd$error$, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$fetchRequestURL$delegate$responseHeaders$responseAd$error$);}Class _logos_class$_ungrouped$ABVideoControlCenter = objc_getClass("ABVideoControlCenter"); { MSHookMessageEx(_logos_class$_ungrouped$ABVideoControlCenter, @selector(prerollEnabled), (IMP)&_logos_method$_ungrouped$ABVideoControlCenter$prerollEnabled, (IMP*)&_logos_orig$_ungrouped$ABVideoControlCenter$prerollEnabled);}} }
#line 15 "Tweak.xm"
