#import <UIKit/UIKit.h>

%hook UITraitCollection
- (long long)userInterfaceIdiom {
    // •
    return 3;
}
%end

%hook UINavigationButton
- (bool)_isExternalRoundedRectButton {
    // •
    return 0;
}
%end

%hook UIAlertController
- (long long)preferredStyle {
    // Center Alert:  Yes=1, No=0
    return 1;
}
%end

%hook _UIAlertControllerCarBackgroundView
- (void)setBackgroundColor:(id)arg1 {
    // Backdrop BG Color (Opaque):  "DELETE this to SHOW stock backdrop blur"
    arg1 = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UIAlertControllerCarBackgroundView
- (void)setCornerRadius:(double)arg1 {
    // Corner Radius:	(Approx "0 - 90" or "DELETE this to SHOW stock corners")
    arg1 = 35;
    %orig;
}
%end

%hook _UIAlertControllerCollectionViewFlowLayout
- (bool)hideSeparators {
    // Hide Separators:  True or False
    return 1;
}
%end

%hook UIAlertControllerVisualStyleAlertCar
- (long long)maximumNumberOfLinesInTitleLabel {
    // Max # Of Lines In Title 
    return 5;
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
    return 5;
}
%end

%hook _UIAlertControllerCollectionViewFlowLayout
- (bool)shouldRoundFirstCell {
    // Combine First Cell:  True or False
    return 0;
}
%end

%hook _UIAlertControllerView
- (bool)showsCancelAction {
    // Show Cancel Button:  True or False
    return 0;
}
%end

%hook _UIAlertControllerView
- (void)setCancelActionIsDiscrete:(bool)arg1 {
    // Merge Cancel Button:  Yes=False, No=True
    arg1 = 0;
    %orig;
}
%end

%hook UIAlertController
- (bool)_canDismissWithGestureRecognizer {
    // Tap Outside To Dismiss:  ⚠️: True or False
    return 1;
}
%end

