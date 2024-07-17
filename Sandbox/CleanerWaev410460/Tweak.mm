#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$WazeMainViewController$prefersStatusBarHidden(id self, SEL _cmd) {
    // Status Bar:  (Hide=TRUE, Show=FALSE)
    return 1;
}

static void (*_orig_ftt_meth_$SpeedometerVC$setShown$)(id, SEL, bool);
static void _patched_ftt_meth_$SpeedometerVC$setShown$(id self, SEL _cmd, bool arg1) {
    // Speedometer:  (Hide=FALSE, Show=TRUE)
    arg1 = 0;
    _orig_ftt_meth_$SpeedometerVC$setShown$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$BottomMenuBar$setButtonsHidden$)(id, SEL, bool);
static void _patched_ftt_meth_$BottomMenuBar$setButtonsHidden$(id self, SEL _cmd, bool arg1) {
    // Menu Bar - Disable/Remove All Buttons:  (Yes=TRUE, No=FALSE)
    arg1 = 0;
    _orig_ftt_meth_$BottomMenuBar$setButtonsHidden$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$ETAMainMenuButton$setPulsate$)(id, SEL, bool);
static void _patched_ftt_meth_$ETAMainMenuButton$setPulsate$(id self, SEL _cmd, bool arg1) {
    // Menu Bar - Main Button Pulsation:  (Yes=TRUE, No=FALSE)
    arg1 = 0;
    _orig_ftt_meth_$ETAMainMenuButton$setPulsate$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$StartDrivingMessage$noActiveDriveLabel(id self, SEL _cmd) {
    // Menu Bar - Driving Message (Good Morning etc):  (Hide=NULL)
    return NULL;
}

static id _patched_ftt_meth_$BottomMenuBar$friendButton(id self, SEL _cmd) {
    // Menu Bar - Friends Button Notification Dot:  (Hide=NULL)
    return NULL;
}

static void (*_orig_ftt_meth_$BottomMenuBar$setNightMode$)(id, SEL, bool);
static void _patched_ftt_meth_$BottomMenuBar$setNightMode$(id self, SEL _cmd, bool arg1) {
    // Menu Bar BG #1 (Tint/Darker Text):  (Hide=TRUE, Show=FALSE)
    arg1 = 1;
    _orig_ftt_meth_$BottomMenuBar$setNightMode$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$WazeMainViewController$screenEdgePanEnabled$(id self, SEL _cmd, id arg1) {
    // Swipe In From Screen Edge Gesture:  (Yes=TRUE, No=FALSE)
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_WazeMainViewController = objc_getClass("WazeMainViewController");
    MSHookMessageEx(_ftt_class_WazeMainViewController, @selector(prefersStatusBarHidden), (IMP)_patched_ftt_meth_$WazeMainViewController$prefersStatusBarHidden, NULL);
    Class _ftt_class_SpeedometerVC = objc_getClass("SpeedometerVC");
    MSHookMessageEx(_ftt_class_SpeedometerVC, @selector(setShown:), (IMP)_patched_ftt_meth_$SpeedometerVC$setShown$, (IMP *)_orig_ftt_meth_$SpeedometerVC$setShown$);
    Class _ftt_class_BottomMenuBar = objc_getClass("BottomMenuBar");
    MSHookMessageEx(_ftt_class_BottomMenuBar, @selector(setButtonsHidden:), (IMP)_patched_ftt_meth_$BottomMenuBar$setButtonsHidden$, (IMP *)_orig_ftt_meth_$BottomMenuBar$setButtonsHidden$);
    Class _ftt_class_ETAMainMenuButton = objc_getClass("ETAMainMenuButton");
    MSHookMessageEx(_ftt_class_ETAMainMenuButton, @selector(setPulsate:), (IMP)_patched_ftt_meth_$ETAMainMenuButton$setPulsate$, (IMP *)_orig_ftt_meth_$ETAMainMenuButton$setPulsate$);
    Class _ftt_class_StartDrivingMessage = objc_getClass("StartDrivingMessage");
    MSHookMessageEx(_ftt_class_StartDrivingMessage, @selector(noActiveDriveLabel), (IMP)_patched_ftt_meth_$StartDrivingMessage$noActiveDriveLabel, NULL);
    MSHookMessageEx(_ftt_class_BottomMenuBar, @selector(friendButton), (IMP)_patched_ftt_meth_$BottomMenuBar$friendButton, NULL);
    MSHookMessageEx(_ftt_class_BottomMenuBar, @selector(setNightMode:), (IMP)_patched_ftt_meth_$BottomMenuBar$setNightMode$, (IMP *)_orig_ftt_meth_$BottomMenuBar$setNightMode$);
    MSHookMessageEx(_ftt_class_WazeMainViewController, @selector(screenEdgePanEnabled:), (IMP)_patched_ftt_meth_$WazeMainViewController$screenEdgePanEnabled$, NULL);
}
