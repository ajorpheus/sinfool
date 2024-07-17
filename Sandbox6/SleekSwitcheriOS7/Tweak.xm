#import <UIKit/UIKit.h>

%hook SBAppSliderIconController
- (float)iconLabelWidth {
    // Icon Labels:  (pass-through=show, 0=no)
    return 0;
}
%end

%hook SBAppSliderScrollingViewController
- (void)setOffsetToIndex:(unsigned int)arg1 animated:(BOOL)arg2 {
    // Centered Card:  (0=HS, 1=current app, 2=last app, etc...)
    arg1 = 0;
    %orig;
}
%end

%hook SBAppSliderIconController
- (void)setOffsetToIndex:(unsigned int)arg1 animated:(BOOL)arg2 {
    // Centered Icon:  (0=HS/none, 1=current app, 2=last app, etc...)
    arg1 = 0;
    %orig;
}
%end

