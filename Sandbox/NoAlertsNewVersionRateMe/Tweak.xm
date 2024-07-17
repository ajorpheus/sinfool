#import <UIKit/UIKit.h>

%hook iVersion
- (BOOL)shouldCheckForNewVersion {
    return 0;
}
%end

