#import <UIKit/UIKit.h>

%hook SBAppSwitcherController
- (void)_updatePageViewScale:(double)arg1 xTranslation:(double)arg2 {
    // ⚠️ Cards - Size:	(Arg#1): [Range (0.0 - 2.0) Stock=1] ***DELETE IF NOT USING***
    arg1 = 1;
    %orig;
}
%end

%hook SBAppSwitcherPageViewController
- (void)setOffsetToIndex:(unsigned long long)arg1 animated:(bool)arg2 {
    // Cards - Open With:  [HS=0, Current App=1, Last App=2]
    arg1 = 2;
    %orig;
}
%end

%hook SBAppSwitcherIconController
- (void)setOffsetToIndex:(unsigned long long)arg1 animated:(bool)arg2 {
    // Icons - Open With:  [HS=0, Current App=1, Last App=2]
    arg1 = 2;
    %orig;
}
%end

%hook SBUIDismissSwitcherAnimationController
- (id)initWithTransitionContextProvider:(id)arg1 activatingDisplayItem:(id)arg2 interactive:(bool)arg3 {
    // Animation - Remove Dismiss Animation/Scaled Image Overlay & Allow Immediate Interaction w/Apps "If Loaded" (but if "not loaded" then no opening animation):		  [YES=(Return Value):NULL]
    return NULL;
}
%end

%hook SBAppSwitcherSettings
- (long long)switcherStyle {
    return 0;
}
%end

