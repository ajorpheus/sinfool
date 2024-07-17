#import <UIKit/UIKit.h>

%hook SPUISearchViewController
- (bool)_showKeyboardOnPresentation {
    // Show Keyboard On Presentation
    return 0;
}
%end

%hook SPUISearchViewController
- (double)clearSearchTimeInterval {
    // Seconds Before Clearing Search On Dismiss
    return 0;
}
%end

%hook SPUISearchViewController
- (bool)_isPullDownSpotlight {
    return 0;
}
%end

%hook SBSpotlightSettings
- (bool)enableSpotlightOnMinusPage {
    return 0;
}
%end

