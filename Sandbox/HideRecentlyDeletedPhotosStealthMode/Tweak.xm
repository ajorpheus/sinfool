#import <UIKit/UIKit.h>

%hook PHQuery
- (bool)_includesTrashedObjects {
    return 0;
}
%end

