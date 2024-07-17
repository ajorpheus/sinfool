#import <UIKit/UIKit.h>

%hook RemoteMouseHDAppDelegate
- (BOOL)isShowAdsBox {
    return 0;
}
%end

