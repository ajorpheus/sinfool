#import <UIKit/UIKit.h>

%hook AdPlayQueueManager
- (id)adDownloader {
    return NULL;
}
%end

