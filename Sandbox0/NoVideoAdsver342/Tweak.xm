#import <UIKit/UIKit.h>

%hook VKVideoSession
- (BOOL)isAdfree {
    return 1;
}
%end

