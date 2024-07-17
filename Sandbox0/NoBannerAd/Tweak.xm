#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (BOOL)didAdLoadComplete {
    return 0;
}
%end

