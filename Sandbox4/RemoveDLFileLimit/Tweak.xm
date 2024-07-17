#import <UIKit/UIKit.h>

%hook DLBrowserViewController_IDownloader
- (BOOL)fileLimitExceeded {
    return 0;
}
%end

