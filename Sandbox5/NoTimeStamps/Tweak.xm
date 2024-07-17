#import <UIKit/UIKit.h>

%hook CKUIBehavior
- (double)timestampBodyLeading {
    // Removes Label Space
    return 0;
}
%end

%hook CKDateChatItem
- (id)loadTranscriptText {
    // Time Stamps
    return NULL;
}
%end

