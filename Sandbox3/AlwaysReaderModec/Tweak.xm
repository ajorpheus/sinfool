#import <UIKit/UIKit.h>

%hook BrowserController
- (bool)readerShouldBeShownIfPossible {
    return 1;
}
%end

%hook TabDocument
- (bool)shouldActivateReaderWhenAvailable {
    return 1;
}
%end

