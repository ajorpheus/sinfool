#import <UIKit/UIKit.h>

%hook MPUMediaControlsTitlesView
- (bool)isHighlighted {
    return 1;
}
%end

