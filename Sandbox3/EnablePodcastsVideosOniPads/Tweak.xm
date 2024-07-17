#import <UIKit/UIKit.h>

%hook SPTPodcastFeatureImplementation
- (bool)isShowsOnIPadEnabled {
    return 1;
}
%end

