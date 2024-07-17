#import <UIKit/UIKit.h>

%hook CKMessageEntryView
- (id)audioButton {
    // Hide Audio Button:  (Yes=NULL, No=pass-through)
    return NULL;
}
%end

%hook CKComposition
- (bool)isSendAnimated {
    // Send Animated:  (True or False)
    return 0;
}
%end

%hook _UITextFieldRoundedRectBackgroundViewNeue
- (id)_initWithFrame:(CGRect)arg1 active:(bool)arg2 lineWidth:(double)arg3 updateView:(bool)arg4 {
    return NULL;
}
%end

