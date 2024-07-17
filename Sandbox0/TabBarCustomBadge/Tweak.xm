#import <UIKit/UIKit.h>

%hook _UIBadgeBackground
- (id)initWithImage:(id)arg1 {
    // Hide Badge/BG:  Yes=NULL, No=pass-through
    return NULL;
}
%end

%hook _UIBadgeView
- (void)setValue:(id)arg1 {
    // Set Custom Text... OR Stock=Delete This Entry 
    arg1 = @"💋";
    %orig;
}
%end

