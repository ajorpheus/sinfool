#import <UIKit/UIKit.h>

%hook FCVideoControlPanelView
- (void)setVolumeHidden:(bool)arg1 animated:(bool)arg2 {
    // •
    arg1 = 1;
    %orig;
}
%end

