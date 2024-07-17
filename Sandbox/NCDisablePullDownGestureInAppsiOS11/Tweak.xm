#import <UIKit/UIKit.h>

%hook SBApplication
- (bool)suppressesCoverSheetGesture {
    return 1;
}
%end

