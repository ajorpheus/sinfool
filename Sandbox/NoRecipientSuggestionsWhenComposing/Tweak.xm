#import <UIKit/UIKit.h>

%hook CKComposeRecipientSelectionController
- (bool)shouldSuppressSearchResultsTable {
    return 1;
}
%end

