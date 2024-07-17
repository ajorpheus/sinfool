#import <UIKit/UIKit.h>

%hook SBDashBoardViewController
- (bool)isWidgetExtensionWithIdentifierVisible:(id)arg1 {
    return 0;
}
%end

