#import <UIKit/UIKit.h>

%hook YTSettings
- (bool)disableMDXDeviceDiscovery {
    return 1;
}
%end

