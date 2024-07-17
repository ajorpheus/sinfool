#import <UIKit/UIKit.h>

%hook PlayController
- (id)initWithSession:(id)arg1 adController:(id)arg2 {
    // No Ads
    arg2 = NULL;
    return %orig;
}
%end

%hook ShuffleFeatureImplementation
- (id)baseUI {
    // Disable Shuffle
    return NULL;
}
%end

%hook SPTPlayerRestrictions
- (BOOL)disallowSeeking {
    // Enable Scrubbing/Manual Skipping
    return 0;
}
%end

%hook SPTPlayerRestrictions
- (BOOL)disallowPeekingAtPreviousTrack {
    // Allow Peeking At Previous Track
    return 0;
}
%end

%hook SPTPlayerRestrictions
- (BOOL)disallowPeekingAtNextTrack {
    // Allow Peeking At Next Track
    return 0;
}
%end

%hook SPTPlayerRestrictions
- (id)disallowSkippingToPreviousTrackReasons {
    // Allow Switching Back To Previous Tracks/Album Views (Preferably After Skip Limit Is Reached)
    return NULL;
}
%end

%hook SPTPlayerRestrictions
- (id)disallowSkippingToNextTrackReasons {
    // Removes Skip Limit Message/Allows Peeking At Next Track After Skip Limit Is Reached
    return NULL;
}
%end

