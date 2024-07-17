#import <UIKit/UIKit.h>

%hook CKPhotoPickerController
- (id)photosCollectionView {
    return NULL;
}
%end

