#import <UIKit/UIKit.h>

%hook WazeMainViewController
- (bool)screenEdgePanEnabled:(id)arg1 {
    return 0;
}
%end

