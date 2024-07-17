#import <UIKit/UIKit.h>

%hook NowPlayingTrackPageView
- (bool)isCoverArtHidden {
    return 1;
}
%end

