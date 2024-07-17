#import <UIKit/UIKit.h>

%hook CAMViewfinderViewController
- (bool)_shouldHideGridViewForGraphConfiguration:(id)arg1 {
    return 0;
}
%end

