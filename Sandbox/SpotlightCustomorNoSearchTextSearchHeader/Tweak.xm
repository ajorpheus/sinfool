#import <UIKit/UIKit.h>

%hook SPUITextField
- (void)setPlaceholder:(id)arg1 {
    // Set Custom Text...
    arg1 = @" ";
    %orig;
}
%end

