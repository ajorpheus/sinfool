#import <UIKit/UIKit.h>

%hook YTTabTitlesView
- (double)preferredHeight {
    return 0;
}
%end

