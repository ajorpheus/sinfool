#import <UIKit/UIKit.h>

%hook CKConversationListController
- (id)searchController {
    return NULL;
}
%end

