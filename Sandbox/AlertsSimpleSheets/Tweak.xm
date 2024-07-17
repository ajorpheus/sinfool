#import <UIKit/UIKit.h>

%hook UIActionSheet
- (id)addMediaButtonWithTitle:(id)arg1 iconView:(id)arg2 andTableIconView:(id)arg3 {
    // Hide Icons:  (Arg#2) Yes=null, No=pass-through
    arg2 = NULL;
    return %orig;
}
%end

%hook UIAlertControllerVisualStyle
- (BOOL)hideActionSeparators {
    // Hide Separators
    return 1;
}
%end

%hook UIAlertController
- (BOOL)_canDismissWithGestureRecognizer {
    // Tap To Dismiss
    return 1;
}
%end

%hook UIAlertController
- (int)preferredStyle {
    return 1;
}
%end

%hook _UIAlertControllerVisualStyleProvidingWeakInterposer
- (id)visualStyleForAlertControllerStyle:(int)arg1 traitCollection:(id)arg2 descriptor:(id)arg3 {
    arg1 = 0;
    return %orig;
}
%end

