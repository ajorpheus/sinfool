#import <UIKit/UIKit.h>

%hook UISearchBarTextFieldLabel
- (void)setText:(id)arg1 {
    // Set Custom Text...
    arg1 = @" ";
    %orig;
}
%end

