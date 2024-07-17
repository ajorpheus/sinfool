#import <UIKit/UIKit.h>

%hook SBAppSwitcherSettings
- (long long)deckSwitcherBackgroundWallpaperStyle {
    // Set Style As Per Glossary Above...
    return 2;
}
%end

