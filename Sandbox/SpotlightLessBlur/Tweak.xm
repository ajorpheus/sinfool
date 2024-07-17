#import <UIKit/UIKit.h>

%hook SBSearchBackdropView
- (void)setTransitionProgress:(double)arg1 {
    // Experiment With Values To Change Blur...
    arg1 = 0.975;
    %orig;
}
%end

%hook SBSearchBackdropView
- (bool)useHighQualityGraphics {
    return 0;
}
%end

