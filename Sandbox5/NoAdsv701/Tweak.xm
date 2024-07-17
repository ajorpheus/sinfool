#import <UIKit/UIKit.h>

%hook FWVideoAdRenderer
- (id)init {
    return NULL;
}
%end

%hook FWVideoAdRenderer2
- (id)init {
    return NULL;
}
%end

%hook FWRendererController
- (id)_getSlotType {
    return NULL;
}
%end

%hook MMLSponsorshipManager
- (id)sponsors {
    return NULL;
}
%end

%hook MMLSponsorshipManager
- (void)fetchLiveSponsorshipImage:(id)arg1 cachedOnly:(bool)arg2 completion:(id)arg3 {
    arg1 = NULL;
    %orig;
}
%end

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

