#import <UIKit/UIKit.h>

%hook WazeMainViewController
- (bool)prefersStatusBarHidden {
    // Status Bar:  (Hide=TRUE, Show=FALSE)
    return 1;
}
%end

%hook SpeedometerVC
- (void)setShown:(bool)arg1 {
    // Speedometer:  (Hide=FALSE, Show=TRUE)
    arg1 = 0;
    %orig;
}
%end

%hook BottomMenuBar
- (void)setButtonsHidden:(bool)arg1 {
    // Menu Bar - Disable/Remove All Buttons:  (Yes=TRUE, No=FALSE)
    arg1 = 0;
    %orig;
}
%end

%hook ETAMainMenuButton
- (void)setPulsate:(bool)arg1 {
    // Menu Bar - Main Button Pulsation:  (Yes=TRUE, No=FALSE)
    arg1 = 0;
    %orig;
}
%end

%hook StartDrivingMessage
- (id)noActiveDriveLabel {
    // Menu Bar - Driving Message (Good Morning etc):  (Hide=NULL)
    return NULL;
}
%end

%hook BottomMenuBar
- (id)friendButton {
    // Menu Bar - Friends Button Notification Dot:  (Hide=NULL)
    return NULL;
}
%end

%hook BottomMenuBar
- (void)setNightMode:(bool)arg1 {
    // Menu Bar BG #1 (Tint/Darker Text):  (Hide=TRUE, Show=FALSE)
    arg1 = 1;
    %orig;
}
%end

%hook WazeMainViewController
- (bool)screenEdgePanEnabled:(id)arg1 {
    // Swipe In From Screen Edge Gesture:  (Yes=TRUE, No=FALSE)
    return 1;
}
%end

