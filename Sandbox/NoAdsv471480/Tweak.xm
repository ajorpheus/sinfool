#import <UIKit/UIKit.h>

%hook AdControl2
- (unsigned char)displayAd:(unsigned char)arg1 {
    return 0;
}
%end

%hook MPAdView
- (id)adManager {
    return NULL;
}
%end

