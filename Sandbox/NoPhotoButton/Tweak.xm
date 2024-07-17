#import <UIKit/UIKit.h>

%hook CKMessageEntryView
- (bool)shouldShowPhotoButton {
    return 0;
}
%end

