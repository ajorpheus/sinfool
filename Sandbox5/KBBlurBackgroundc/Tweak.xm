#import <UIKit/UIKit.h>

%hook UIKBRenderConfig
- (long long)backdropStyle {
    // Set Backdrop Style... Blur=0, Light Blur=-1, Dark Alt=1, Alt Blur=2
    return 0;
}
%end

