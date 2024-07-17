#import <UIKit/UIKit.h>

%hook SBUICallToActionLabel
- (void)setText:(id)arg1 forLanguage:(id)arg2 animated:(bool)arg3 {
    // (Arg#1): Set Custom Text...
    arg1 = @"Flex 3";
    %orig;
}
%end

%hook SBUICallToActionLabel
- (void)fadeInImmediately:(bool)arg1 completion:(id)arg2 {
    // Shows Text Immediately
    arg1 = 1;
    %orig;
}
%end

