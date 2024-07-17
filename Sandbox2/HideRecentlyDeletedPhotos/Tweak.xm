#import <UIKit/UIKit.h>

%hook PHQuery
- (BOOL)_includesTrashedObjects {
    return 0;
}
%end

