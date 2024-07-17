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

