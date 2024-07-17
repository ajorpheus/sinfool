#import <UIKit/UIKit.h>

%hook aaAds
- (BOOL)enabled {
    // Ads
    return 0;
}
%end

%hook aaADPurchase
- (BOOL)purchased {
    // Ads
    return 1;
}
%end

%hook aaHurricanes
- (BOOL)enabled {
    // Hurricanes
    return 1;
}
%end

%hook aaHurricaneProPurchase
- (BOOL)purchased {
    // Hurricanes
    return 1;
}
%end

%hook aaWarnings
- (BOOL)enabled {
    // Warnings
    return 1;
}
%end

%hook aaWarningsProPurchase
- (BOOL)purchased {
    // Warnings
    return 1;
}
%end

%hook aaRater
- (id)alert {
    // Rate App Reminder
    return NULL;
}
%end

