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

@class SBNotificationsClearButton; 
static SBNotificationsClearButton* (*_logos_orig$_ungrouped$SBNotificationsClearButton$initWithTitle$graphicsQuality$)(_LOGOS_SELF_TYPE_INIT SBNotificationsClearButton*, SEL, id, long long) _LOGOS_RETURN_RETAINED; static SBNotificationsClearButton* _logos_method$_ungrouped$SBNotificationsClearButton$initWithTitle$graphicsQuality$(_LOGOS_SELF_TYPE_INIT SBNotificationsClearButton*, SEL, id, long long) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static SBNotificationsClearButton* _logos_method$_ungrouped$SBNotificationsClearButton$initWithTitle$graphicsQuality$(_LOGOS_SELF_TYPE_INIT SBNotificationsClearButton* __unused self, SEL __unused _cmd, id arg1, long long arg2) _LOGOS_RETURN_RETAINED {
    
    arg1 = @"Delete All";
    arg2 = 0;
    return _logos_orig$_ungrouped$SBNotificationsClearButton$initWithTitle$graphicsQuality$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBNotificationsClearButton = objc_getClass("SBNotificationsClearButton"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationsClearButton, @selector(initWithTitle:graphicsQuality:), (IMP)&_logos_method$_ungrouped$SBNotificationsClearButton$initWithTitle$graphicsQuality$, (IMP*)&_logos_orig$_ungrouped$SBNotificationsClearButton$initWithTitle$graphicsQuality$);}} }
#line 12 "Tweak.xm"
