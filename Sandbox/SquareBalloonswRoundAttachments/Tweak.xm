#import <UIKit/UIKit.h>

%hook CKBalloonChatItem
- (unsigned long long)balloonCorners {
    return 0;
}
%end

%hook CKUIBehavior
- (double)balloonMaskTailWidth {
    return 0;
}
%end

%hook CKImageBalloonView
- (void)setHasTail:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

