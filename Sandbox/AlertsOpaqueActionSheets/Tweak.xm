#import <UIKit/UIKit.h>

%hook UIInterfaceActionGroupView
- (void)_setDrawsBackground:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

