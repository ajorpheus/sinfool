#import <UIKit/UIKit.h>

%hook CKPhotoPickerSheetViewController
- (void)_sendSelectedAssets:(bool)arg1 {
    // •
    arg1 = 0;
    %orig;
}
%end

%hook CKTranscriptController
- (void)photoPickerController:(id)arg1 requestsSendAssets:(id)arg2 sendImmediately:(bool)arg3 {
    // •
    arg3 = 0;
    %orig;
}
%end

