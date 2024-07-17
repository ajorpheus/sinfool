#import <UIKit/UIKit.h>

%hook PUOneUpBarsController
- (void)_performFavoriteAction:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

