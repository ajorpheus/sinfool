#import <UIKit/UIKit.h>

%hook VersionCheckResponse
- (id)init {
    return NULL;
}
%end

