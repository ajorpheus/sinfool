#import <UIKit/UIKit.h>

%hook ADCZone
- (bool)hasAdsOfType:(long long)arg1 {
    // •
    return 0;
}
%end

%hook GADAdFetcher
- (id)init {
    // •
    return NULL;
}
%end

