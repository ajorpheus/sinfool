#import <UIKit/UIKit.h>

%hook SBAppSwitcherSettings
- (long long)deckSwitcherForegroundWallpaperStyle {
    // Set Style As Per Glossary Above...
    return 0;
}
%end

