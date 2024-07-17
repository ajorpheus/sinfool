#import <UIKit/UIKit.h>

%hook FWAd
- (void)setAdId:(unsigned long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

