#import <UIKit/UIKit.h>

%hook MBPurchaseManager
- (BOOL)unlockIsPurchased {
    return 1;
}
%end

