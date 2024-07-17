#import <UIKit/UIKit.h>

%hook SBControlCenterContentContainerView
- (void)setContentHeight:(double)arg1 {
    // ⚠️Height: {(stock ios approx) iP5/S:436, iP6+:429, iPad:184, stock:delete this unit}
    arg1 = 429;
    %orig;
}
%end

%hook SBUIController
- (bool)shouldShowControlCenterTabControlOnFirstSwipe {
    // Show Grabber Tab On First Swipe
    return 0;
}
%end

%hook SBControlCenterSettings
- (void)setControlAlpha:(double)arg1 {
    // Control Alpha (ghost effect): {range=0.0 to 1}
    arg1 = 1;
    %orig;
}
%end

%hook SBLockScreenView
- (void)setBottomGrabberHidden:(bool)arg1 forRequester:(id)arg2 {
    // Hide LS Grabber
    arg1 = 0;
    %orig;
}
%end

%hook SBControlCenterSettings
- (void)setHighlightColor:(id)arg1 {
    // Highlight Color (slider/glyph)
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBControlCenterSettings
- (void)setHighlightAlpha:(double)arg1 {
    // Highlight Alpha (of Glyphs while sliding):	{range=0.0 to 1}
    arg1 = 1;
    %orig;
}
%end

%hook SBCCBrightnessSectionController
- (bool)_shouldDarkenBackground {
    // Brightness Dark Background
    return 1;
}
%end

%hook SBCCAirStuffSectionController
- (void)setAirDropEnabled:(bool)arg1 {
    // AirDrop (section)
    arg1 = 1;
    %orig;
}
%end

