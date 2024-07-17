#import <UIKit/UIKit.h>

%hook TiUIiOSAdView
- (id)adview {
    return NULL;
}
%end

