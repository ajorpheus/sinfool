#import <UIKit/UIKit.h>

%hook MusicContentViewController
- (bool)prefersStatusBarHidden {
    return 1;
}
%end

