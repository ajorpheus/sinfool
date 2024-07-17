#import <UIKit/UIKit.h>

%hook RHStatusBarView
- (void)setStatusMessage:(id)arg1 ofType:(int)arg2 {
    // Customize:  (Argument#1) Set Custom Text, pass-through=stock, (NULL)=none  (Argument#2)  0=No Orange Background Color, pass-through=stock
    arg1 = @"Flex 2";
    arg2 = 0;
    %orig;
}
%end

%hook RHFullPlayerContainerViewController
- (id)statusBarView {
    // Full Player SB View:  (pass-through=show, (NULL)=hide)
    return NULL;
}
%end

