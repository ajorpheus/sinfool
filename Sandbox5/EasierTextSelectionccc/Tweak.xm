#import <UIKit/UIKit.h>

%hook WKContentView
- (void)useSelectionAssistantWithMode:(int)arg1 {
    arg1 = 1;
    %orig;
}
%end

