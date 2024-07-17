#import <UIKit/UIKit.h>

%hook CKMessageEntryContentView
- (void)setPlaceholderText:(id)arg1 {
    // Set Custom Text...
    arg1 = @"Write a message...";
    %orig;
}
%end

