#import <UIKit/UIKit.h>

%hook GMSNHeaderView
- (void)setPrimaryBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook GMSNHeaderView
- (void)setStepSeparationColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook GMSNHeaderView
- (void)setSecondaryBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

