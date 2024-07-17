#import <UIKit/UIKit.h>

%hook SXMClientDMCAManagaer
- (id)init {
    // •
    return NULL;
}
%end

%hook SXMPlayhead
- (id)lblSkipsLeftCount {
    // •
    return NULL;
}
%end

%hook SXMDMCAManager
- (id)dmca {
    // •
    return NULL;
}
%end

