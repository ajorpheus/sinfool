#import <UIKit/UIKit.h>

%hook iRate
- (BOOL)shouldPromptForRating {
    return 0;
}
%end

%hook CopyrightLabel
- (id)initWithFrame:(CGRect)arg1 {
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
- (id)initWithActivityIndicatorStyle:(long long)arg1 {
    return NULL;
}
%end

