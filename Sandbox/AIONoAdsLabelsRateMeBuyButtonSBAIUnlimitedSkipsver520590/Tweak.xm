#import <UIKit/UIKit.h>

%hook iRate
- (BOOL)shouldPromptForRating {
    return 0;
}
%end

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook SongCell
- (id)buyButton {
    return NULL;
}
%end

%hook Configuration
- (BOOL)isNoSkipLimitEnabled {
    return 1;
}
%end

%hook Configuration
- (BOOL)liveRadioVideoAdEnabled {
    return 0;
}
%end

%hook Configuration
- (BOOL)liveRadioCompanionAdEnabled {
    return 0;
}
%end

%hook Configuration
- (BOOL)customRadioVideoAdEnabled {
    return 0;
}
%end

%hook Configuration
- (BOOL)customRadioAudioAdEnabled {
    return 0;
}
%end

%hook Configuration
- (BOOL)customRadioCompanionAdEnabled {
    return 0;
}
%end

%hook UIActivityIndicatorView
- (id)initWithActivityIndicatorStyle:(int)arg1 {
    return NULL;
}
%end

