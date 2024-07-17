#import <UIKit/UIKit.h>

%hook YNVersion
- (int)checkAgainstMinimum:(id)arg1 {
    return 0;
}
%end

