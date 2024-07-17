#import <UIKit/UIKit.h>

%hook CKUIBehavior
- (bool)canShowContactPhotosInConversationList {
    // Conversation List
    return 0;
}
%end

%hook CKUIBehaviorPad
- (bool)canShowContactPhotosInConversationList {
    // Conversation List
    return 0;
}
%end

%hook CKFullScreenAppNavbarManager
- (bool)_canShowAvatarView {
    // Nav Bar
    return 0;
}
%end

%hook CKNavbarCanvasViewController
- (bool)_canShowAvatarView {
    // Nav Bar
    return 0;
}
%end

