#import <UIKit/UIKit.h>

%hook _UIBadgeView
- (id)initWithText:(id)arg1 {
    // Set Custom Text...
    arg1 = @" ";
    return %orig;
}
%end

