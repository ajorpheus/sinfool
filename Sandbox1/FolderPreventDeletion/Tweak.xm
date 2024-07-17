#import <UIKit/UIKit.h>

%hook SBFolder
- (bool)shouldRemoveWhenEmpty {
    return 0;
}
%end

