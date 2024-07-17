#import <UIKit/UIKit.h>

%hook TopViewVC
- (bool)shouldOpenZeroSpeedViewController:(id)arg1 {
    // Disables Popup Descriptions (Optional):  (Yes=FALSE)
}
%end

%hook ExternalPoiController
- (id)init {
    return NULL;
}
%end

%hook UIWebView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

