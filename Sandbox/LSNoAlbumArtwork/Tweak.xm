#import <UIKit/UIKit.h>

%hook MPUNowPlayingController
- (id)currentNowPlayingArtwork {
    // •
    return NULL;
}
%end

