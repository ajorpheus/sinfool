#import <UIKit/UIKit.h>

%hook WGWidgetShortLookView
- (void)setShowingMoreContent:(bool)arg1 {
    // Always Show More Content: (Yes=T, No=F)
    arg1 = 1;
    %orig;
}
%end

