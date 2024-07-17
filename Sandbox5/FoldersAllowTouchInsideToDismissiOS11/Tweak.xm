#import <UIKit/UIKit.h>

%hook SBFloatyFolderView
- (bool)_tapToCloseGestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2 {
    return 1;
}
%end

