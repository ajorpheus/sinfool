#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (bool)fetchRequestURL:(id)arg1 delegate:(id)arg2 responseHeaders:(id)arg3 responseAd:(id)arg4 error:(id*)arg5 {
    return 0;
}
%end

%hook ABVideoControlCenter
- (bool)prerollEnabled {
    return 0;
}
%end

