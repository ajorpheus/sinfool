#import <UIKit/UIKit.h>

%hook UIDevice
- (long long)userInterfaceIdiom {
    return 1;
}
%end

