#import <UIKit/UIKit.h>

%hook SBWidgetController
- (bool)isWidgetExtensionVisible:(id)arg1 {
    return 0;
}
%end

