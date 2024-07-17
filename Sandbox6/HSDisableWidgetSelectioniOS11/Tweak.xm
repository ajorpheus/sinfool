#import <UIKit/UIKit.h>

%hook SBHomeScreenTodayViewController
- (bool)isWidgetExtensionWithIdentifierVisible:(id)arg1 {
    return 0;
}
%end

