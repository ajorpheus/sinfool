#import <UIKit/UIKit.h>

%hook CKDateChatItem
- (id)loadTranscriptText {
    // Time Stamps
    return NULL;
}
%end

