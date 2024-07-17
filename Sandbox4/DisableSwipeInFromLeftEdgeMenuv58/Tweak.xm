#import <UIKit/UIKit.h>

%hook IIViewDeckController
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

