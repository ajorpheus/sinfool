#import <UIKit/UIKit.h>

%hook PHHandsetDialerView
- (bool)dialerIsNumericOnly {
    return 1;
}
%end

