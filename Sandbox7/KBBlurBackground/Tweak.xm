#import <UIKit/UIKit.h>

%hook UIKBRenderConfig
- (int)backdropStyle {
    // Backdrop Style:  Blur=0, Light Blur=-1, Transparent=-2, Dark Alt=1, Matrix Blur=-3
    return 0;
}
%end

