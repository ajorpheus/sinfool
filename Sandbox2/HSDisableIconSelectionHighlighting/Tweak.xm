#import <UIKit/UIKit.h>

%hook SBIconController
- (bool)shouldHighlightTouchedIconView:(id)arg1 {
    return 0;
}
%end

