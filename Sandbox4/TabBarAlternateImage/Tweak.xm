#import <UIKit/UIKit.h>

%hook UITabBarSwappableImageView
- (void)showAlternateImage:(bool)arg1 {
    // •
    arg1 = 1;
    %orig;
}
%end

