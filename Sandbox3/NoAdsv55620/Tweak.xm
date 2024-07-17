#import <UIKit/UIKit.h>

%hook TMOAccountInfo
- (bool)mustShowAds {
    return 0;
}
%end

