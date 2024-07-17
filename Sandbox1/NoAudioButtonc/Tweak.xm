#import <UIKit/UIKit.h>

%hook CKMessageEntryView
- (id)audioButton {
    return NULL;
}
%end

