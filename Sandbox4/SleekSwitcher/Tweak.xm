#import <UIKit/UIKit.h>

%hook SBAppSwitcherIconController
- (double)iconLabelWidth {
    // Icon Labels:  (pass-through=show, 0=no)
    return 0;
}
%end

%hook SBAppSwitcherPageViewController
- (void)setOffsetToIndex:(unsigned long long)arg1 animated:(bool)arg2 {
    // Centered Card:  (0=HS, 1=current app, 2=last app, etc...)
    arg1 = 0;
    %orig;
}
%end

%hook SBAppSwitcherIconController
- (void)setOffsetToIndex:(unsigned long long)arg1 animated:(bool)arg2 {
    // Centered Icon:  (0=HS/none, 1=current app, 2=last app, etc...)
    arg1 = 0;
    %orig;
}
%end

