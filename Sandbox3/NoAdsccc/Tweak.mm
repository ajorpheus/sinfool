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

@class RemoteMouseHDAppDelegate; 
static BOOL (*_logos_orig$_ungrouped$RemoteMouseHDAppDelegate$isShowAdsBox)(_LOGOS_SELF_TYPE_NORMAL RemoteMouseHDAppDelegate* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RemoteMouseHDAppDelegate$isShowAdsBox(_LOGOS_SELF_TYPE_NORMAL RemoteMouseHDAppDelegate* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$RemoteMouseHDAppDelegate$isShowAdsBox(_LOGOS_SELF_TYPE_NORMAL RemoteMouseHDAppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$RemoteMouseHDAppDelegate = objc_getClass("RemoteMouseHDAppDelegate"); { MSHookMessageEx(_logos_class$_ungrouped$RemoteMouseHDAppDelegate, @selector(isShowAdsBox), (IMP)&_logos_method$_ungrouped$RemoteMouseHDAppDelegate$isShowAdsBox, (IMP*)&_logos_orig$_ungrouped$RemoteMouseHDAppDelegate$isShowAdsBox);}} }
#line 9 "Tweak.xm"
