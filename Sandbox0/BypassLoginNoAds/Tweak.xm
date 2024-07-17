#import <UIKit/UIKit.h>

%hook NBCSEventItem
- (BOOL)free {
    return 1;
}
%end

%hook GADAdFetcher
- (id)initWithDelegate:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook PTMediaPlayerItem
- (BOOL)skipLivePreroll {
    return 1;
}
%end

