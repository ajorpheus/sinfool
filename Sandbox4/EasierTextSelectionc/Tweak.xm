#import <UIKit/UIKit.h>

%hook WKContentView
- (id)webSelectionAssistant {
    return NULL;
}
%end

