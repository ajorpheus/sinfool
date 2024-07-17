#import <UIKit/UIKit.h>

%hook CKPhotoPickerCollectionViewController
- (long long)maxAssetsToDisplay {
    // Set # of photos to display...
    return 1000;
}
%end

