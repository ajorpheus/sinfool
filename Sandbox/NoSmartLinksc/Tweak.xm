#import <UIKit/UIKit.h>

%hook CKTextMessagePartChatItem
- (bool)containsHyperlink {
    // •
    return 0;
}
%end

