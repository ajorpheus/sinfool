#import <UIKit/UIKit.h>

%hook SBDefaultBannerView
- (bool)_showAttachmentPreview {
    return 0;
}
%end

