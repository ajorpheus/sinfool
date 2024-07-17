#import <UIKit/UIKit.h>

%hook SBSceneLayoutWindow
- (void)setBackgroundColor:(id)arg1 {
    // ...Set Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBAnimationFactorySettings
- (void)setSlowDownFactor:(double)arg1 {
    // Animations Speed: (Range: 0.0-1.0) Lower # = Faster
    arg1 = 0;
    %orig;
}
%end

%hook SBAnimationFactorySettings
- (void)setSlowAnimations:(bool)arg1 {
    // No Slow Animations
    arg1 = 0;
    %orig;
}
%end

