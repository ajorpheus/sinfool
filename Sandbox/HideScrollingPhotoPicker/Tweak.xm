#import <UIKit/UIKit.h>

%hook CKUIBehavior
- (double)photoPickerMaxPhotoHeight {
    return 0;
}
%end

