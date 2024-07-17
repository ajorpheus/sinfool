#import <UIKit/UIKit.h>

%hook CAAdManager
- (BOOL)prerollEnabled {
    return 0;
}
%end

