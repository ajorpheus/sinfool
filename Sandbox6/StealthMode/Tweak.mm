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

@class _RCCaptureInputDeviceSession; @class RCLockScreenViewController; 
static RCLockScreenViewController* (*_logos_orig$_ungrouped$RCLockScreenViewController$init)(_LOGOS_SELF_TYPE_INIT RCLockScreenViewController*, SEL) _LOGOS_RETURN_RETAINED; static RCLockScreenViewController* _logos_method$_ungrouped$RCLockScreenViewController$init(_LOGOS_SELF_TYPE_INIT RCLockScreenViewController*, SEL) _LOGOS_RETURN_RETAINED; static BOOL (*_logos_orig$_ungrouped$_RCCaptureInputDeviceSession$useStartSoundEffect)(_LOGOS_SELF_TYPE_NORMAL _RCCaptureInputDeviceSession* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$_RCCaptureInputDeviceSession$useStartSoundEffect(_LOGOS_SELF_TYPE_NORMAL _RCCaptureInputDeviceSession* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static RCLockScreenViewController* _logos_method$_ungrouped$RCLockScreenViewController$init(_LOGOS_SELF_TYPE_INIT RCLockScreenViewController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static BOOL _logos_method$_ungrouped$_RCCaptureInputDeviceSession$useStartSoundEffect(_LOGOS_SELF_TYPE_NORMAL _RCCaptureInputDeviceSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$RCLockScreenViewController = objc_getClass("RCLockScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$RCLockScreenViewController, @selector(init), (IMP)&_logos_method$_ungrouped$RCLockScreenViewController$init, (IMP*)&_logos_orig$_ungrouped$RCLockScreenViewController$init);}Class _logos_class$_ungrouped$_RCCaptureInputDeviceSession = objc_getClass("_RCCaptureInputDeviceSession"); { MSHookMessageEx(_logos_class$_ungrouped$_RCCaptureInputDeviceSession, @selector(useStartSoundEffect), (IMP)&_logos_method$_ungrouped$_RCCaptureInputDeviceSession$useStartSoundEffect, (IMP*)&_logos_orig$_ungrouped$_RCCaptureInputDeviceSession$useStartSoundEffect);}} }
#line 17 "Tweak.xm"
