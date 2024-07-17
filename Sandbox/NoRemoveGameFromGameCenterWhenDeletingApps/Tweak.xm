#import <UIKit/UIKit.h>

%hook SBApplication
- (BOOL)hasGameCenterData {
    return 0;
}
%end

