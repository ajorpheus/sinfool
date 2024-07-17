#import <UIKit/UIKit.h>

%hook VUNavigationBar
- (BOOL)showVevoLogo {
    // Navigation Bar Logo
    return 0;
}
%end

%hook VMMoviePlayerController
- (BOOL)hideDefaultVevoLogo {
    // Featured Video Logo Overlay
    return 1;
}
%end

