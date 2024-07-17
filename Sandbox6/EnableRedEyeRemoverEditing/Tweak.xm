#import <UIKit/UIKit.h>

%hook PUPhotoEditViewController
- (bool)_shouldDisplayRedEyeTool {
    return 1;
}
%end

