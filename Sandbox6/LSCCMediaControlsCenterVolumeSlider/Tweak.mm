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

@class MPVolumeController; 
static float (*_logos_orig$_ungrouped$MPVolumeController$_volumeFromAVController)(_LOGOS_SELF_TYPE_NORMAL MPVolumeController* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$MPVolumeController$_volumeFromAVController(_LOGOS_SELF_TYPE_NORMAL MPVolumeController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static float _logos_method$_ungrouped$MPVolumeController$_volumeFromAVController(_LOGOS_SELF_TYPE_NORMAL MPVolumeController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0.5;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MPVolumeController = objc_getClass("MPVolumeController"); { MSHookMessageEx(_logos_class$_ungrouped$MPVolumeController, @selector(_volumeFromAVController), (IMP)&_logos_method$_ungrouped$MPVolumeController$_volumeFromAVController, (IMP*)&_logos_orig$_ungrouped$MPVolumeController$_volumeFromAVController);}} }
#line 9 "Tweak.xm"
