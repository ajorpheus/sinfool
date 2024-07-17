#import <UIKit/UIKit.h>

%hook SkipEvent
- (long long)skipStatus {
    // No "SKIP LIMIT REACHED" Popup: (Hide=0, Show=P)
    return 0;
}
%end

%hook DMCAInfo
- (long long)dmcaContentType {
    return 0;
}
%end

