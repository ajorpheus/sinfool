#import <UIKit/UIKit.h>

%hook TMOAccountInfo
- (BOOL)mustShowAds {
    return 0;
}
%end

%hook TMOAccountInfo
- (BOOL)isPremiumBackgroundUnlocked {
    return 1;
}
%end

%hook TMOAccountInfo
- (BOOL)isPremiumRingtonePackUnlocked {
    return 1;
}
%end

