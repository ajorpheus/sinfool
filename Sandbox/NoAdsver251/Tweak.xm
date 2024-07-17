#import <UIKit/UIKit.h>

%hook FWAdManager
- (id)init {
    return NULL;
}
%end

%hook CSComScore
+ (bool)isJailbroken {
    return 0;
}
%end

%hook CSCore
- (bool)isJailBroken {
    return 0;
}
%end

%hook GADDevice
- (bool)isJailbroken {
    return 0;
}
%end

%hook Utils
+ (bool)isDeviceJailBroken {
    return 0;
}
%end

%hook HSPersistentDataModel
+ (bool)isJailbroken {
    return 0;
}
%end

%hook BugSenseJSONGenerator
+ (bool)isJailbroken {
    return 0;
}
%end

