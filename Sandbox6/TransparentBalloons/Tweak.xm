#import <UIKit/UIKit.h>

%hook CKMessagePartChatItem
- (BOOL)color {
    // White Text (left balloon): (Yes=T, No=P)
    return 1;
}
%end

%hook CKColoredBalloonView
- (bool)wantsGradient {
    return 0;
}
%end

