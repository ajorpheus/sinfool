#import <UIKit/UIKit.h>

%hook SBNCTableViewController
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2 {
    return 0;
}
%end

