#import <UIKit/UIKit.h>

%hook MPUChronologicalProgressView
- (id)_timeLabelFont {
    return NULL;
}
%end

