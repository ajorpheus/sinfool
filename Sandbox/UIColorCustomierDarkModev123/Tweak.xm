#import <UIKit/UIKit.h>

%hook UIView
- (void)_setBackgroundColor:(id)arg1 {
    // Background
    arg1 = [UIColor colorWithRed:28/255.0 green:28/255.0 blue:28/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UIImageView
- (id)_effectiveTintColorWithImage:(id)arg1 {
    // Image Button: (Return Value)
    return [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
}
%end

%hook UILabel
- (void)_setTextColor:(id)arg1 {
    // Text
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook PXTemperatureCollectionViewCell
- (void)setColor:(id)arg1 {
    // Temperature Circle
    arg1 = [UIColor colorWithRed:4/255.0 green:139/255.0 blue:27/255.0 alpha:255/255.0];
    %orig;
}
%end

