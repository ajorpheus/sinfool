#import <UIKit/UIKit.h>

%hook ChartBoostManager
- (id)init {
    return NULL;
}
%end

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

