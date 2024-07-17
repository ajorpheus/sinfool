#import <UIKit/UIKit.h>

%hook _UIAlertControllerCarBackgroundView
- (void)setCornerRadius:(float)arg1 {
    // Corner Radius
    arg1 = 15;
    %orig;
}
%end

%hook UIAlertController
- (long long)preferredStyle {
    // Center Alert: (Yes=1, No=0)
    return 1;
}
%end

%hook _UIAlertControllerView
- (bool)shouldHaveBackdropView {
    // Backdrop: (Show=True, Transparent=False)
    return 1;
}
%end

%hook _UIAlertControllerCarBackgroundView
- (void)setBackgroundColor:(id)arg1 {
    // Backdrop BG Color (Opaque): (Stock Blur=DELETE THIS UNIT)
    arg1 = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UIAlertControllerVisualStyle
- (BOOL)hideActionSeparators {
    // Hide Separators
    return 1;
}
%end

%hook UIAlertControllerVisualStyleAlertCar
- (long long)maximumNumberOfLinesInTitleLabel {
    // Max # Of Lines In Title 
    return 10;
}
%end

%hook UIAlertControllerVisualStyleAlertCar
- (long long)maximumNumberOfLinesInMessageLabel {
    // Max # Of Lines In Message
    return 1000;
}
%end

%hook UIAlertControllerVisualStyleActionSheetCar
- (long long)maximumNumberOfLinesInTitleLabel {
    // Max # Of Lines In Title (Action Sheet)
    return 10;
}
%end

%hook _UIAlertControllerView
- (bool)showsCancelAction {
    // Show/Hide Cancel Button
    return 1;
}
%end

%hook _UIAlertControllerView
- (void)setCancelActionIsDiscrete:(bool)arg1 {
    // Merge Cancel Button: (Yes=False, No=True)
    arg1 = 0;
    %orig;
}
%end

%hook UIAlertController
- (bool)_canDismissWithGestureRecognizer {
    // Tap Outside To Dismiss
    return 1;
}
%end

%hook UITraitCollection
- (long long)userInterfaceIdiom {
    return 3;
}
%end

%hook UINavigationButton
- (bool)_isExternalRoundedRectButton {
    return 0;
}
%end

