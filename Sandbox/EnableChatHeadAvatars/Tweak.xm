#import <UIKit/UIKit.h>

%hook UIKeyboardAssistantBar
- (float)assistantBarHeight {
    // Hide Predictive Bar
    return 0;
}
%end

%hook UIKeyboardAssistantBar
- (float)sideBarWidth {
    return 0;
}
%end

%hook CKUIBehavior
- (BOOL)canShowContactPhotosInConversationList {
    return 1;
}
%end

%hook UIDevice
- (int)userInterfaceIdiom {
    return 1;
}
%end

%hook UITextInputTraits
- (int)keyboardAppearance {
    return 0;
}
%end

%hook UIKeyboardEmojiCollectionViewCell
- (int)emojiFontSize {
    return 30;
}
%end

