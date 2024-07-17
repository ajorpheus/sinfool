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

@class ServiceCallManager; @class VPAdBreak; @class ABCVODVideoPlayerViewController; 
static BOOL (*_logos_orig$_ungrouped$VPAdBreak$watched)(_LOGOS_SELF_TYPE_NORMAL VPAdBreak* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$VPAdBreak$watched(_LOGOS_SELF_TYPE_NORMAL VPAdBreak* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$ABCVODVideoPlayerViewController$adCues)(_LOGOS_SELF_TYPE_NORMAL ABCVODVideoPlayerViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$ABCVODVideoPlayerViewController$adCues(_LOGOS_SELF_TYPE_NORMAL ABCVODVideoPlayerViewController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$ServiceCallManager$checkVersions)(_LOGOS_SELF_TYPE_NORMAL ServiceCallManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$ServiceCallManager$checkVersions(_LOGOS_SELF_TYPE_NORMAL ServiceCallManager* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$VPAdBreak$watched(_LOGOS_SELF_TYPE_NORMAL VPAdBreak* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static id _logos_method$_ungrouped$ABCVODVideoPlayerViewController$adCues(_LOGOS_SELF_TYPE_NORMAL ABCVODVideoPlayerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static BOOL _logos_method$_ungrouped$ServiceCallManager$checkVersions(_LOGOS_SELF_TYPE_NORMAL ServiceCallManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$VPAdBreak = objc_getClass("VPAdBreak"); { MSHookMessageEx(_logos_class$_ungrouped$VPAdBreak, @selector(watched), (IMP)&_logos_method$_ungrouped$VPAdBreak$watched, (IMP*)&_logos_orig$_ungrouped$VPAdBreak$watched);}Class _logos_class$_ungrouped$ABCVODVideoPlayerViewController = objc_getClass("ABCVODVideoPlayerViewController"); { MSHookMessageEx(_logos_class$_ungrouped$ABCVODVideoPlayerViewController, @selector(adCues), (IMP)&_logos_method$_ungrouped$ABCVODVideoPlayerViewController$adCues, (IMP*)&_logos_orig$_ungrouped$ABCVODVideoPlayerViewController$adCues);}Class _logos_class$_ungrouped$ServiceCallManager = objc_getClass("ServiceCallManager"); { MSHookMessageEx(_logos_class$_ungrouped$ServiceCallManager, @selector(checkVersions), (IMP)&_logos_method$_ungrouped$ServiceCallManager$checkVersions, (IMP*)&_logos_orig$_ungrouped$ServiceCallManager$checkVersions);}} }
#line 21 "Tweak.xm"
