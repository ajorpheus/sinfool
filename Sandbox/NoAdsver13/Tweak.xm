#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook Interstitiel
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

