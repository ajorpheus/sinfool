#import <UIKit/UIKit.h>

%hook CKPhotoPickerCollectionViewController
- (long long)maxAssetsToDisplay {
    // Set # Of Photos To Show...  (stock=50)
    return 500;
}
%end

