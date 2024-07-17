#import <UIKit/UIKit.h>

%hook WGShortLookStyleButton
- (double)_dimension {
    return 0;
}
%end

