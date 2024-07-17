#import <UIKit/UIKit.h>

%hook CAMViewfinderViewController
- (bool)_shouldHideGridViewForMode:(long long)arg1 device:(long long)arg2 {
    return 0;
}
%end

