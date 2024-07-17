#import <UIKit/UIKit.h>

%hook CKTranscriptController
- (void)photoPickerController:(id)arg1 requestsSendAssets:(id)arg2 sendImmediately:(bool)arg3 {
    arg3 = 0;
    %orig;
}
%end

