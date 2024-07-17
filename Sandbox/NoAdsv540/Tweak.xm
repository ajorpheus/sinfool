#import <UIKit/UIKit.h>

%hook TSAdParameters
- (bool)adsDisabled {
    return 1;
}
%end

