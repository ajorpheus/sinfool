#import <UIKit/UIKit.h>

%hook SBMediaController
- (bool)isPlaying {
    return 1;
}
%end

