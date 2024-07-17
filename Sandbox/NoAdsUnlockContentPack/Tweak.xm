#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook AFContentPack
- (BOOL)unlocked {
    return 1;
}
%end

