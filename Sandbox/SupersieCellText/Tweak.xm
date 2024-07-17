#import <UIKit/UIKit.h>

%hook UITableViewCell
- (bool)_isPigglyWigglyCell {
    // •
    return 1;
}
%end

