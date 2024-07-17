#import <UIKit/UIKit.h>

%hook GOODimmingBackgroundView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook YTDialogContainerScrollView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook GOODialogView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook GOODialogActionButton
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook YTTopAlignedView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook GOOPopoverView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

