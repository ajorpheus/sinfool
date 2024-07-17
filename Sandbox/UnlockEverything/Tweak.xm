#import <UIKit/UIKit.h>

%hook OCStoreRegionalDistrictAssistantManager
- (BOOL)didPurchaseUnlockEverything {
    return 1;
}
%end

