#import <UIKit/UIKit.h>

%hook _SBMainScreenScreenshotProvider
- (id)flasher {
    return NULL;
}
%end

