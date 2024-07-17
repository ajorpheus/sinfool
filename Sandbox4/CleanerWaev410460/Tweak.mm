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

@class StartDrivingMessage; @class WazeMainViewController; @class ETAMainMenuButton; @class BottomMenuBar; @class SpeedometerVC; 
static bool (*_logos_orig$_ungrouped$WazeMainViewController$prefersStatusBarHidden)(_LOGOS_SELF_TYPE_NORMAL WazeMainViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$WazeMainViewController$prefersStatusBarHidden(_LOGOS_SELF_TYPE_NORMAL WazeMainViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$WazeMainViewController$screenEdgePanEnabled$)(_LOGOS_SELF_TYPE_NORMAL WazeMainViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$WazeMainViewController$screenEdgePanEnabled$(_LOGOS_SELF_TYPE_NORMAL WazeMainViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SpeedometerVC$setShown$)(_LOGOS_SELF_TYPE_NORMAL SpeedometerVC* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SpeedometerVC$setShown$(_LOGOS_SELF_TYPE_NORMAL SpeedometerVC* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$BottomMenuBar$setButtonsHidden$)(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$BottomMenuBar$setButtonsHidden$(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST, SEL, bool); static id (*_logos_orig$_ungrouped$BottomMenuBar$friendButton)(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$BottomMenuBar$friendButton(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BottomMenuBar$setNightMode$)(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$BottomMenuBar$setNightMode$(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$ETAMainMenuButton$setPulsate$)(_LOGOS_SELF_TYPE_NORMAL ETAMainMenuButton* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$ETAMainMenuButton$setPulsate$(_LOGOS_SELF_TYPE_NORMAL ETAMainMenuButton* _LOGOS_SELF_CONST, SEL, bool); static id (*_logos_orig$_ungrouped$StartDrivingMessage$noActiveDriveLabel)(_LOGOS_SELF_TYPE_NORMAL StartDrivingMessage* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$StartDrivingMessage$noActiveDriveLabel(_LOGOS_SELF_TYPE_NORMAL StartDrivingMessage* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$WazeMainViewController$prefersStatusBarHidden(_LOGOS_SELF_TYPE_NORMAL WazeMainViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$SpeedometerVC$setShown$(_LOGOS_SELF_TYPE_NORMAL SpeedometerVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SpeedometerVC$setShown$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$BottomMenuBar$setButtonsHidden$(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$BottomMenuBar$setButtonsHidden$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$ETAMainMenuButton$setPulsate$(_LOGOS_SELF_TYPE_NORMAL ETAMainMenuButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$ETAMainMenuButton$setPulsate$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$StartDrivingMessage$noActiveDriveLabel(_LOGOS_SELF_TYPE_NORMAL StartDrivingMessage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$BottomMenuBar$friendButton(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static void _logos_method$_ungrouped$BottomMenuBar$setNightMode$(_LOGOS_SELF_TYPE_NORMAL BottomMenuBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$BottomMenuBar$setNightMode$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$WazeMainViewController$screenEdgePanEnabled$(_LOGOS_SELF_TYPE_NORMAL WazeMainViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$WazeMainViewController = objc_getClass("WazeMainViewController"); { MSHookMessageEx(_logos_class$_ungrouped$WazeMainViewController, @selector(prefersStatusBarHidden), (IMP)&_logos_method$_ungrouped$WazeMainViewController$prefersStatusBarHidden, (IMP*)&_logos_orig$_ungrouped$WazeMainViewController$prefersStatusBarHidden);}{ MSHookMessageEx(_logos_class$_ungrouped$WazeMainViewController, @selector(screenEdgePanEnabled:), (IMP)&_logos_method$_ungrouped$WazeMainViewController$screenEdgePanEnabled$, (IMP*)&_logos_orig$_ungrouped$WazeMainViewController$screenEdgePanEnabled$);}Class _logos_class$_ungrouped$SpeedometerVC = objc_getClass("SpeedometerVC"); { MSHookMessageEx(_logos_class$_ungrouped$SpeedometerVC, @selector(setShown:), (IMP)&_logos_method$_ungrouped$SpeedometerVC$setShown$, (IMP*)&_logos_orig$_ungrouped$SpeedometerVC$setShown$);}Class _logos_class$_ungrouped$BottomMenuBar = objc_getClass("BottomMenuBar"); { MSHookMessageEx(_logos_class$_ungrouped$BottomMenuBar, @selector(setButtonsHidden:), (IMP)&_logos_method$_ungrouped$BottomMenuBar$setButtonsHidden$, (IMP*)&_logos_orig$_ungrouped$BottomMenuBar$setButtonsHidden$);}{ MSHookMessageEx(_logos_class$_ungrouped$BottomMenuBar, @selector(friendButton), (IMP)&_logos_method$_ungrouped$BottomMenuBar$friendButton, (IMP*)&_logos_orig$_ungrouped$BottomMenuBar$friendButton);}{ MSHookMessageEx(_logos_class$_ungrouped$BottomMenuBar, @selector(setNightMode:), (IMP)&_logos_method$_ungrouped$BottomMenuBar$setNightMode$, (IMP*)&_logos_orig$_ungrouped$BottomMenuBar$setNightMode$);}Class _logos_class$_ungrouped$ETAMainMenuButton = objc_getClass("ETAMainMenuButton"); { MSHookMessageEx(_logos_class$_ungrouped$ETAMainMenuButton, @selector(setPulsate:), (IMP)&_logos_method$_ungrouped$ETAMainMenuButton$setPulsate$, (IMP*)&_logos_orig$_ungrouped$ETAMainMenuButton$setPulsate$);}Class _logos_class$_ungrouped$StartDrivingMessage = objc_getClass("StartDrivingMessage"); { MSHookMessageEx(_logos_class$_ungrouped$StartDrivingMessage, @selector(noActiveDriveLabel), (IMP)&_logos_method$_ungrouped$StartDrivingMessage$noActiveDriveLabel, (IMP*)&_logos_orig$_ungrouped$StartDrivingMessage$noActiveDriveLabel);}} }
#line 63 "Tweak.xm"
