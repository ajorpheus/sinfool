#import <UIKit/UIKit.h>

%hook CKTextMessagePartChatItem
- (id)_attributedTextWithTextColor:(id)arg1 {
    // Set Text Color... (Arg#1)
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook CKColoredBalloonView
- (bool)wantsGradient {
    return 0;
}
%end

