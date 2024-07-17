#import <UIKit/UIKit.h>

%hook UIStatusBar
- (void)_setDoubleHeightStatusString:(id)arg1 {
    // Set Custom Text...
    arg1 = @"Flex 2";
    %orig;
}
%end

