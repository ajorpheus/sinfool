#import <UIKit/UIKit.h>

%hook MFMailboxTableView
- (double)_destructiveConfirmationPoint {
    return 0;
}
%end

