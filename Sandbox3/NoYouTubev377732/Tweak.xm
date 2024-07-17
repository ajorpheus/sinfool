#import <UIKit/UIKit.h>

%hook GPMServiceConfiguration
- (bool)canShowYouTube {
    // Show YouTube
    return 0;
}
%end

%hook PlayerViewContentView
- (void)animateYouTubeViewsOn:(bool)arg1 {
    // Stop YouTube Button Animation
    arg1 = 1;
    %orig;
}
%end

