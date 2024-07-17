#import <UIKit/UIKit.h>

%hook SBSearchBackdropView
- (bool)useHighQualityGraphics {
    return 1;
}
%end

